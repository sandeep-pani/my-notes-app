import 'package:mynotes2/services/auth/auth_user.dart';

abstract class AuthProvider {
  Future<void> initialize();

  // this is a getter function called current user that returns an AuthUser type or null
  AuthUser? get currentUser;

  Future<AuthUser> login({
    required String email,
    required String password,
  });

  Future<AuthUser> createUser({
    required String email,
    required String password,
  });

  Future<void> logout();
  Future<void> sendEmailVerification();
}
