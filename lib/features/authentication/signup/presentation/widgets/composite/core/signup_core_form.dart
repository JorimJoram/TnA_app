import 'package:flutter/material.dart';

class SignupCoreForm extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController confirmController;

  const SignupCoreForm({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.confirmController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: [],
    );
  }
}
