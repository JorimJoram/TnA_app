import 'package:flutter/material.dart';
import 'package:tna_app/features/authentication/signup/presentation/widgets/components/comm/signup_text_field.dart';
import 'package:tna_app/features/authentication/signup/presentation/widgets/components/comm/signup_validate_button.dart';

class SignupCoreForm extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController confirmController;

  final FocusNode usernameFocusNode;
  final FocusNode passwordFocusNode;
  final FocusNode confirmFocusNode;

  const SignupCoreForm({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.confirmController,

    required this.confirmFocusNode,
    required this.passwordFocusNode,
    required this.usernameFocusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          children: [
            Expanded(
              child: SignupTextField(
                labelText: 'username',
                hintText: '아이디를 입력해주세요',
                focusNode: usernameFocusNode,
                textInputAction: TextInputAction.next,
                onSubmitted: (_) {
                  FocusScope.of(context).requestFocus(passwordFocusNode);
                },
              ),
            ),
            SignupValidateButton(isDisabled: false, buttonTitle: "확인"),
          ],
        ),
        SignupTextField(
          labelText: 'password',
          hintText: '비밀번호를 입력해주세요',
          focusNode: passwordFocusNode,
          textInputAction: TextInputAction.next,
          onSubmitted: (_) {
            FocusScope.of(context).requestFocus(confirmFocusNode);
          },
        ),
        SignupTextField(
          labelText: 'confirm',
          hintText: '비밀번호를 다시 입력해주세요',
          focusNode: confirmFocusNode,
        ),
      ],
    );
  }
}
