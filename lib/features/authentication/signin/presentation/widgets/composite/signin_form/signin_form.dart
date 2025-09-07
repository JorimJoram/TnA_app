import 'package:flutter/material.dart';
import 'package:tna_app/features/authentication/signin/presentation/widgets/components/signin_text_field.dart';

class SigninForm extends StatefulWidget {
  const SigninForm({super.key});

  @override
  State<StatefulWidget> createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  final _signinUsernameController = TextEditingController();
  final _signinPasswordController = TextEditingController();

  @override
  void dispose() {
    _signinUsernameController.dispose();
    _signinPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SigninTextField(
          label: '아이디',
          hint: 'Enter username',
          controller: _signinUsernameController,
        ),
        const SizedBox(height: 8),
        SigninTextField(
          label: '비밀번호',
          hint: 'Enter password',
          controller: _signinPasswordController,
          obscureText: true,
        ),
        const SizedBox(width: 8),
        ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            // padding: const EdgeInsets.symmetric(vertical: 24.0),
          ),
          child: const Text('Login'),
        ),
      ],
    );
  }
}
