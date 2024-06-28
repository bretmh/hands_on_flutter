import '../models/auth_response.dart';

/// The AuthRepository interface that you must implement.
abstract interface class AuthRepository {
  Future<AuthResponse> login({
    required final String email,
    required final String password,
  });
}
