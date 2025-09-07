import 'package:flutter/material.dart';
import 'package:tna_app/features/authentication/signin/presentation/widgets/composite/signin_form/signin_form.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});
  @override
  State<StatefulWidget> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
              Expanded(
                child: SigninForm(
                  usenameController: _usernameController,
                  passwordController: _passwordController,
                  onPressedAuth: _handleAuth,
                ),
              ),
              Expanded(child: const Center()),
            ],
          ),
        ),
      ),
    );
  }

  void _handleAuth() {
    final String username = _usernameController.text;
    final String password = _passwordController.text;
  }
}
