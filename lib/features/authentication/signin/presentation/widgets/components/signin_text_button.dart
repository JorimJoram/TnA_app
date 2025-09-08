import 'package:flutter/material.dart';

class SigninTextButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback? onPressed;

  const SigninTextButton({
    super.key,
    required this.buttonTitle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(buttonTitle, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
