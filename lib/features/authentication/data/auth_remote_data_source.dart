import 'dart:async';

import 'package:fl_discover_dashboard/core/data/network/network_service.dart';
import 'package:fl_discover_dashboard/core/platform/locator.dart';
import 'package:fl_discover_dashboard/features/authentication/data/authentication_endpoint.dart';
import 'package:fl_discover_dashboard/features/authentication/model/user_model.dart';

class AutheRemoteDataSource {
  final NetworkService _service;
  const AutheRemoteDataSource(this._service);

  Future<User> signup({
    required String email,
    required String middleName,
    required String lastName,
    required String password,
    required String firstName,
    required String contact,
  }) async {
    final result = await _service.postHttp(
      AuthenticationEndpoints.register,
      body: {
        "firstName": firstName,
        "middleName": middleName,
        "accountType": 2,
        "lastName": lastName,
        "email": email,
        "contact": contact,
        "password": password,
        "countryID": 254
      },
      tokenRequired: false,
    );
    return User.fromJson(result);
  }
}
