import 'package:flutter/material.dart';
import 'package:tna_app/common/theme/main_theme.dart';
import 'package:tna_app/features/authentication/signin/presentation/widgets/components/signin_auth_button.dart';
import 'package:tna_app/features/authentication/signin/presentation/widgets/components/signin_text_button.dart';
import 'package:tna_app/features/authentication/signin/presentation/widgets/components/signin_text_field.dart';

class SigninForm extends StatelessWidget {
  final TextEditingController usenameController;
  final TextEditingController passwordController;
  final VoidCallback onPressedAuth;

  const SigninForm({
    super.key,
    required this.usenameController,
    required this.passwordController,
    required this.onPressedAuth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SigninTextField(
          label: '아이디',
          hint: 'Enter username',
          controller: usenameController,
        ),
        const SizedBox(height: 8),
        SigninTextField(
          label: '비밀번호',
          hint: 'Enter password',
          controller: passwordController,
          obscureText: true,
        ),
        const SizedBox(width: 8, height: 8),
        SigninAuthButton(
          onPressed: onPressedAuth,
          buttonTitle: "로그인",
          buttonColor: jorimGreen,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SigninTextButton(buttonTitle: "아이디/비밀번호 찾기"),
            SigninTextButton(buttonTitle: "회원가입"),
          ],
        ),
      ],
    );
  }
}
