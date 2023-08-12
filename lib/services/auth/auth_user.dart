import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/foundation.dart';

@immutable
class AuthUser {
  final bool isEmailVerified;
  final String? userEmail;
  const AuthUser(this.isEmailVerified, this.userEmail);

  factory AuthUser.fromFirebase(User user) =>
      AuthUser(user.emailVerified, user.email);
}
