// ignore_for_file: unused_element

import 'dart:async';

import 'package:fl_discover_dashboard/core/data/network/network_service_impl.dart';
import 'package:fl_discover_dashboard/core/platform/app_strings.dart';
import 'package:fl_discover_dashboard/core/platform/connection_status.dart';
import 'package:flutter/foundation.dart';

import '../failures.dart';
import 'logging_utils.dart';

/// Return a `UIError` with a human readable [message].
///
/// This is intended to be used in the Usecase `NetwokFailure` and `CacheFailure`
/// handlera, and [message] should be a human readable error messages,
/// so that the bloc layer that makes use of usecases can just propagate these errors
/// to the UI without needing to do any extra processing.
// ignore: prefer_expression_function_bodies
UIError getUIErrorFromUsecaseFailure(
    // ignore: prefer_expression_function_bodies
    String message,
    dynamic exception,
    // ignore: prefer_expression_function_bodies
    StackTrace stackTrace) {
  // Send the Exception and Stacktrace to Sentry in Production mode.
  // sentry.capture(
  //   event: getSentryEnvEvent(
  //     'Internal exception: $message: ${exception?.toString()}',
  //     stackTrace,
  //     SeverityLevel.error,
  //   ),
  // );

  return UIError(message);
}

/// Return a `CacheFailure` with a generic connection error message for
/// unhandled errors from Api requests or otherwise unknown errors.
/// Also prints the associated [exception], for debugging purposes.
///
/// This is intended to be used in the repository layer's `DBFailure` catch block,
/// for all errors originating from the RemotLocalDatasource, so that the error may
/// be also logged.
// ignore: prefer_expression_function_bodies
CacheFailure getCacheFailureFromDBFailure(
    DBFailure exception, StackTrace stackTrace) {
  // sentry.capture(
  //   event: getSentryEnvEvent('Unhandled Cache exception: ${exception?.toString()}', stackTrace, SeverityLevel.debug),
  // );

  if (kDebugMode) {
    logger.e('DB Failure: ${exception.message} | ${exception.data}', exception,
        stackTrace);
  }

  return CacheFailure(exception.message);
}

/// Return a `NetworkFailure` with a generic connection error message for
/// unhandled errors from Api requests or otherwise unknown errors.
/// Also prints the associated [exception], for debugging purposes.
///
/// This is intended to be used in the repository layer's `ApiFailure` catch block,
/// for all known and unknown errors originating from the RemoteDatasource, so that
/// the error may be also logged.
///
/// The named [*Msg] params may be used to customise the error message depending
/// on the error type. For example, `notFoundMsg` can be set to "User not found",
/// which is descriptive enough to be sent to the Presentation layer for use in
/// a [UIError].
/// Also, you can set `anyMsg` to force all error messages no matter the type to
/// one custom message.
NetworkFailure getNetworkFailureFromApiFailure(
  ApiFailure exception,
  StackTrace stackTrace, {
  String? anyMsg,
  String? serverErrorMsg,
  String? badRequestMsg,
  String? notFoundMsg,
  String? unauthenticatedMsg,
  String? notPermittedMsg,
  String? validationFailedMsg,
  String? unknownMsg,
  String? failureMsg,
  String? conflictMsg,
}) {
  String errorMessage;

  switch (exception.errorCode) {
    case ApiErrors.serverError:
      errorMessage =
          anyMsg ?? serverErrorMsg ?? AppStrings.apiExceptionMessage!;
      break;
    case ApiErrors.badRequest:
      errorMessage =
          anyMsg ?? badRequestMsg ?? AppStrings.apiBadRequestMessage!;
      break;
    case ApiErrors.notFound:
      errorMessage = anyMsg ?? notFoundMsg ?? AppStrings.apiNotFoundMessage!;
      break;
    case ApiErrors.unauthenticated:
      errorMessage =
          anyMsg ?? unauthenticatedMsg ?? AppStrings.apiUnauthenticatedMessage!;
      break;
    case ApiErrors.notPermitted:
      errorMessage =
          anyMsg ?? notPermittedMsg ?? AppStrings.apiNotPermittedMessage!;
      break;
    case ApiErrors.validationFailed:
      errorMessage =
          anyMsg ?? validationFailedMsg ?? AppStrings.validationFailedMessage!;
      break;
    case ApiErrors.unknown:
      errorMessage =
          anyMsg ?? unknownMsg ?? AppStrings.genericExceptionMessage!;
      break;
    case ApiErrors.failure:
      errorMessage =
          anyMsg ?? failureMsg ?? AppStrings.genericExceptionMessage!;
      break;
    case ApiErrors.noInternet:
      errorMessage = AppStrings.noInternetMessage!;
      break;
    case ApiErrors.conflict:
      errorMessage = anyMsg ?? conflictMsg ?? 'Conflict error';
      break;
  }

  // Send the Exception and Stacktrace to Sentry in Production mode for a selected class of error types.
  // if (errorCode == ApiErrors.badRequest ||
  //     errorCode == ApiErrors.failure ||
  //     errorCode == ApiErrors.notFound ||
  //     errorCode == ApiErrors.serverError ||
  //     errorCode == ApiErrors.unknown) {
  //   sentry.capture(
  //     event: getSentryEnvEvent('Unhandled Api exception: ${exception?.toString()}', stackTrace, SeverityLevel.debug),
  //   );
  // }

  if (exception.message.contains('host lookup')) {
    ConnectionStatusSingleton.getInstance().checkConnection();
    return NetworkFailure(AppStrings.connectionTimeOut!);
  }

  return NetworkFailure(errorMessage);
}

/// Intended for use in the remote datasource layer. Provide [source] as
/// method name and [message] as the error string directly from
/// the api. The repository layer should listen specifically for
/// `ApiFailure`s, and handle the errors based on the api error message,
/// e.g. `'not_found'`
Future<void> handleApiFailure({
  required String source,
  required String errorMessage,
  required ApiErrors errorCode,
  Map<String, dynamic>? extraData,
  bool refreshTokenExpired = false,
  bool isReturnTypeVoid = false,
}) async {
  if (kDebugMode) {
    logger.e(
        'api: $source => $errorCode\t$errorMessage | extraData: ${extraData ?? ''}');
  }

  extraData = extraData ?? {};

  final isOnline = errorCode == ApiErrors.failure
      ? await ConnectionStatusSingleton.getInstance().checkConnection()
      : true;

  if (isOnline) {
    if (errorCode == ApiErrors.validationFailed &&
        extraData['status'] == kRequestFailedValidation) {
      final _msgs = (extraData['errors'] as Map).values.first as List;

      logger.i(_msgs.join('\n'));
      errorMessage = errorMessage;
    } else {
      errorMessage = errorMessage;
    }
  } else {
    errorCode = ApiErrors.noInternet;
  }

  throw ApiFailure(errorCode, errorMessage);
}

/// For unexplained error messages, we defaultly return a generic message to mask
/// potentially sensitive API messages, while at the same time attempting to parse
/// the provided error message and reformat it in a way that is presentable to the
/// user.
String? _sanitiseUnexplainedErrorMessage(String error) {
  if (error.contains("valid phone number")) {
    return error.substring(error.indexOf('+'));
  }

  return errorMessages[kUnexplainedError];
}

const errorMessages = {
  kInvalidPin: "Invalid PIN",
  kInvalidOtp: "Invalid OTP",
  kInvalidLoginCredentials: "Password Incorrect",
  kMomoFundingFailed: "Could not fund via Mobile Money",
  kInsufficientWalletBalance: "You have insufficient balance in your wallet",
  kMultipleWalletOfSameTypeNotSupported:
      "You already have a wallet in this currency",
  kUnexplainedError: 'Something went wrong',
};

const int kRequestFailedValidation = 100;
const int kInvalidPin = 111;
const int kInvalidOtp = 104;
const int kInvalidLoginCredentials = 105;
const int kMomoFundingFailed = 109;
const int kInsufficientWalletBalance = 116;
const int kMultipleWalletOfSameTypeNotSupported = 117;
const int kUnexplainedError = 107;
// const int kPhoneNumberAlreadyVerified = 103;
// const int kNoImageInRequest = 106;
// const int kNoTransactionTokenInHeader = 112;
// const int kTransactionTokenExpired = 113;
// const int kIncompatibleWalletCurrencies = 115;
