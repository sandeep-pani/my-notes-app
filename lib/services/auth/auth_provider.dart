import 'package:mynotes2/services/auth/auth_user.dart';

abstract class AuthProvider {
  // this is a getter function called current user that returns an AuthUser type or null
  AuthUser? get currentUser;

  Future<AuthUser> logIn({
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
