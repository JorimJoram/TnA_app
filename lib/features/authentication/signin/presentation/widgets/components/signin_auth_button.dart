import 'package:flutter/material.dart';

class SigninAuthButton extends StatelessWidget {
  final String buttonTitle;
  final Color buttonColor;
  final VoidCallback? onPressed;

  const SigninAuthButton({
    super.key,
    required this.buttonTitle,
    required this.buttonColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      ),
      child: Text(
        buttonTitle,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
