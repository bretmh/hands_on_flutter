import 'dart:convert';
import 'dart:math';

/// An abstract interface for the backend authentication API.
abstract interface class BackendAuthApi {
  /// Handles the login request and returns a JSON string.
  ///
  /// The [email] and [password] parameters are required for authentication.
  Future<String> loginHandler({
    required final String email,
    required final String password,
  });
}

/// An implementation of the [BackendAuthApi] interface.
class BackendAuthApiImpl implements BackendAuthApi {
  final Random _random = Random();

  @override
  Future<String> loginHandler({
    required final String email,
    required final String password,
  }) async {
    final randomDelay = _random.nextInt(3) + 1;
    await Future.delayed(Duration(seconds: randomDelay));

    if (_random.nextDouble() < 0.25) {
      return jsonEncode({"status_code": 500, "message": "Something really bad happened."});
    }

    if (email != "flutter@isawesome.com" || password != "Password123%") {
      return jsonEncode({"status_code": 401, "message": "Invalid credentials."});
    }

    return jsonEncode({"status_code": 200, "message": "Login successful."});
  }
}
