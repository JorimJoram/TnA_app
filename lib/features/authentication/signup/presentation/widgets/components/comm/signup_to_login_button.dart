import 'package:flutter/material.dart';

class SignupToLoginButton extends StatelessWidget {
  final VoidCallback toLogin;
  const SignupToLoginButton({super.key, required this.toLogin});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: toLogin,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black,
        side: BorderSide(color: Colors.black),
      ),
      child: Text('로그인'),
    );
  }
}
