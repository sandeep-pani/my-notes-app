import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/foundation.dart';

@immutable
class AuthUser {
  final bool isEmailVerified;
  final String? userEmail;
  const AuthUser({required this.isEmailVerified, required this.userEmail});

  factory AuthUser.fromFirebase(User user) =>
      AuthUser(isEmailVerified: user.emailVerified, userEmail: user.email);
}
