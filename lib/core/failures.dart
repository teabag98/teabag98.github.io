import 'data/network/network_service_impl.dart';

class Failure {
  final String message;
  final dynamic data;
  const Failure(this.message, {this.data});

  @override
  String toString() => message;
}

class ApiFailure extends Failure {
  final ApiErrors errorCode;
  ApiFailure(this.errorCode, String message) : super(message);
}

class DBFailure extends Failure {
  DBFailure(String message) : super(message);
}

class NetworkFailure {
  final String message;
  NetworkFailure(this.message);
}

/// Not a Failure lol, but kinda. I'm just doing this
/// so the usecase can catch this and let the UI know
/// to direct the user to the authorisation URL, without
/// needing extra bells and whistles.
///
/// Time will tell if this was a genius or stupid idea.
class VisaCardAuthRequired {
  final String? authUrl;
  VisaCardAuthRequired({this.authUrl});
}

/// Same as above. Ego be
class BankUssdRequired {
  final String? ussd;
  BankUssdRequired({this.ussd});
}

class CacheFailure {
  final String message;
  CacheFailure(this.message);
}

class UIError {
  final String message;
  const UIError(this.message);
}
