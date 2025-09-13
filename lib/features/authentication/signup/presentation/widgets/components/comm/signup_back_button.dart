import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupBackButton extends StatelessWidget {
  final VoidCallback? toTheBack;

  const SignupBackButton({super.key, required this.toTheBack});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: toTheBack,
      icon: SvgPicture.asset('assets/images/returnButton.svg', width: 24),
      iconSize: 24,
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(),
    );
  }
}
