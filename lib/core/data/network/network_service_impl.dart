import 'package:dio/dio.dart';
import 'package:fl_discover_dashboard/core/data/network/config.dart';
import 'package:fl_discover_dashboard/core/utilities/logging_utils.dart';

import 'network_service.dart';

class NetworkServiceImpl implements NetworkService {
  late Dio _dio;

  NetworkServiceImpl() {
    final options = BaseOptions(
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      baseUrl: /*FlavorConfig.instance.values.baseUrl*/ kStagingApiUrl,
    );

    _dio = Dio(options);
    _dio.interceptors.add(
        InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
      options.headers.addAll({"X-Requested-With": "XMLHttpRequest"});

      // if (options.extra != null) {
      if (options.extra['token-required'] == true) {
        // final personalAccUser = await guardedCacheAccess<UserModel>(
        //     AuthenticationModuleInjector.resolve<
        //             AuthenticationLocalDatasource>()
        //         .getPersonalAccountUser);
        // logger.i("User token " + personalAccUser.profile.tokens[0].token.toString());
        // final token =
        //     (personalAccUser.token != null) ? personalAccUser.token : null;
        // options.headers.addAll({
        //   "Authorization": "Bearer ${token}",
        // });
      }

      // if (options.extra['transaction-token'] != null) {
      //   options.headers.addAll({
      //     "Transaction-Token": "${options.extra['transaction-token']}",
      //   });
      // }
      // }

      return handler.next(options);
      // },
    }));
  }

  @override
  Future<Map<String, dynamic>> getHttp(
    String endpoint, {
    Map<String, dynamic>? params,
    bool tokenRequired = true,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await _dio.get(
        endpoint,
        queryParameters: params,
        options: Options(
          extra: {'token-required': tokenRequired},
          headers: headers,
        ),
      );

      // ignore: avoid_print
      logger.i('\n\n ${response.statusCode} \n\n');

      // ignore: avoid_print
      logger.i('\n\n ${response.data} \n\n');

      return _handleApiResponse(response);
    } on DioError catch (e) {
      logger.e('\n\n ${e.response?.statusCode} \n\n');
      logger.e('\n\n ${e.response?.data} \n\n');
      return _handleApiResponse(e.response);
    } catch (e) {
      logger.e('\n\n ${e.toString()} \n\n');
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': '${e.toString()}',
      };
    }
  }

  @override
  Future<Map<String, dynamic>> postHttp(
    String endpoint, {
    Map<String, dynamic>? params,
    dynamic body,
    Map<String, dynamic>? headers,
    bool tokenRequired = true,
    String? transactionToken,
  }) async {
    try {
      final response = await _dio.post(
        endpoint,
        queryParameters: params,
        data: body,
        options: Options(
          extra: {
            'token-required': tokenRequired,
            'transaction-token': transactionToken,
          },
          headers: headers,
        ),
      );

      logger.i('\n\n ${response.statusCode} \n\n');

      logger.i('\n\n ${response.data} \n\n');

      return _handleApiResponse(response);
    } on DioError catch (e) {
      logger.e('\n\n ${e.response?.statusCode} \n\n');
      logger.e('\n\n ${e.response?.data} \n\n');
      return _handleApiResponse(e.response);
    } catch (e) {
      logger.e('\n\n ${e.toString()} \n\n');
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': '${e.toString()}',
      };
    }
  }

  @override
  Future<Map<String, dynamic>> putHttp(
    String endpoint, {
    Map<String, dynamic>? params,
    dynamic body,
    Map<String, dynamic>? headers,
    bool isPatch = false,
    bool tokenRequired = true,
  }) async {
    try {
      final response = isPatch
          ? await _dio.patch(
              endpoint,
              queryParameters: params,
              data: body,
              options: Options(
                extra: {'token-required': tokenRequired},
                headers: headers,
              ),
            )
          : await _dio.put(
              endpoint,
              queryParameters: params,
              data: body,
              options: Options(
                extra: {'token-required': tokenRequired},
                headers: headers,
              ),
            );

      logger.i('\n\n ${response.statusCode} \n\n');

      // ignore: avoid_print
      logger.i('\n\n ${response.data} \n\n');

      return _handleApiResponse(response);
    } on DioError catch (e) {
      logger.e('\n\n ${e.response?.statusCode} \n\n');
      logger.e('\n\n ${e.response?.data} \n\n');
      return _handleApiResponse(e.response);
    } catch (e) {
      logger.e('\n\n ${e.toString()} \n\n');
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': '${e.toString()}',
      };
    }
  }

  @override
  Future<Map<String, dynamic>> deleteHttp(
    String endpoint, {
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool tokenRequired = true,
  }) async {
    try {
      final response = await _dio.delete(
        endpoint,
        queryParameters: params,
        data: body,
        options: Options(
          extra: {'token-required': tokenRequired},
          headers: headers,
        ),
      );

      return _handleApiResponse(response);
    } on DioError catch (e) {
      logger.e('\n\n ${e.response?.statusCode} \n\n');
      logger.e('\n\n ${e.response?.data} \n\n');
      return _handleApiResponse(e.response);
    } catch (e) {
      logger.e('\n\n ${e.toString()} \n\n');
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': '${e.toString()}',
      };
    }
  }

  Map<String, dynamic> _handleApiResponse(Response? response) {
    if (response == null) {
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': "(null response)",
      };
    }

    if (response.statusCode! / 200 >= 1 && response.statusCode! / 200 < 1.5) {
      if (response.data is Map && (response.data as Map).containsKey('data')) {
        return response.data as Map<String, dynamic>;
      }

      if ((response.data as Map)['success'] == false) {
        return <String, dynamic>{
          'error': ApiErrors.failure,
          'message': (response.data as Map).containsKey('errors')
              ? (response.data as Map)['errors'].toString()
              : (response.data as Map)['message'],
        };
      }

      return <String, dynamic>{'data': response.data};
    }

    final errorResult = <String, dynamic>{
      'message': '${response.data['message']}',
      'data': response.data,
    };

    switch (response.statusCode) {
      case 400:
        errorResult['error'] = ApiErrors.badRequest;
        break;
      case 401:
        errorResult['error'] = ApiErrors.unauthenticated;
        break;
      case 403:
        errorResult['error'] = ApiErrors.notPermitted;
        break;
      case 404:
        errorResult['error'] = ApiErrors.notFound;
        break;
      case 409:
        errorResult['error'] = ApiErrors.conflict;
        break;
      case 422:
        errorResult['error'] = ApiErrors.validationFailed;
        break;

      case 500:
        errorResult['error'] = ApiErrors.serverError;
        break;
      default:
        errorResult['error'] = ApiErrors.unknown;
    }

    assert(errorResult['error'] != null);
    assert(errorResult['error'] is ApiErrors);

    assert(errorResult['message'] != null);
    assert(errorResult['message'] is String);

    return errorResult;
  }
}

enum ApiErrors {
  serverError,
  badRequest,
  notFound,
  validationFailed,
  unauthenticated,
  notPermitted,
  unknown,
  noInternet,
  failure,
  conflict,
}
