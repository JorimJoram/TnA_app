import 'package:flutter/material.dart';

class SignupValidateButton extends StatelessWidget {
  final VoidCallback? customOnPressed;
  final String? buttonTitle;
  final bool isDisabled;

  const SignupValidateButton({
    super.key,
    required this.isDisabled,
    this.customOnPressed,
    this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: isDisabled ? null : customOnPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Text(buttonTitle ?? ''),
    );
  }
}
