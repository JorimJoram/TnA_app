import 'package:flutter/material.dart';

class SignupTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;

  final ValueChanged<String>? onSubmitted;

  const SignupTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.focusNode,
    this.textInputAction,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: UnderlineInputBorder(),
      ),
      onSubmitted: onSubmitted,
    );
  }
}
