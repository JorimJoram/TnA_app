import 'package:flutter/material.dart';
import 'package:tna_app/features/authentication/signup/presentation/widgets/composite/comm/signup_back_button.dart';

class SignupCoreHeader extends StatelessWidget {
  final VoidCallback? onPress;

  const SignupCoreHeader({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [SignupBackButton(toTheBack: onPress)],
    );
  }
}
