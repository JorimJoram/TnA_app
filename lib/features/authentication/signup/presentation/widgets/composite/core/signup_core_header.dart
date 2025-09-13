import 'package:flutter/material.dart';
import 'package:tna_app/features/authentication/signup/presentation/widgets/components/comm/signup_back_button.dart';
import 'package:tna_app/features/authentication/signup/presentation/widgets/components/comm/signup_to_login_button.dart';

class SignupCoreHeader extends StatelessWidget {
  final VoidCallback? toBack;
  final VoidCallback toLogin;

  const SignupCoreHeader({
    super.key,
    required this.toBack,
    required this.toLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SignupBackButton(toTheBack: toBack),
        SignupToLoginButton(toLogin: toLogin),
      ],
    );
  }
}
