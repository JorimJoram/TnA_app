import 'package:flutter/material.dart';
import 'package:tna_app/features/authentication/signin/presentation/widgets/composite/signin_form/signin_form.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: const Center()),
              Expanded(child: SigninForm()),
              Expanded(child: const Center()),
            ],
          ),
        ),
      ),
    );
  }
}
