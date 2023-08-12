import 'package:flutter/material.dart';
import 'package:mynotes2/services/auth/auth_service.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Verify")),
      body: Column(children: [
        Text(
            "We've sent you an email verification. Please open it to verify your account (${AuthService.firebase().currentUser?.userEmail})."),
        const Text(
            "If you haven't received a verification email, press the button below."),
        TextButton(
          onPressed: () {
            AuthService.firebase().sendEmailVerification();
          },
          child: const Text('Send email verification.'),
        ),
        TextButton(
            onPressed: () {
              AuthService.firebase().logout();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/login/', (route) => false);
            },
            child: const Text("Restart"))
      ]),
    );
  }
}
