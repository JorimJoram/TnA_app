import 'package:flutter/material.dart';
import 'package:tna_app/features/authentication/signin/presentation/signin_screen.dart';
import 'package:tna_app/features/authentication/signup/presentation/widgets/composite/core/signup_core_bottom.dart';
import 'package:tna_app/features/authentication/signup/presentation/widgets/composite/core/signup_core_form.dart';
import 'package:tna_app/features/authentication/signup/presentation/widgets/composite/core/signup_core_header.dart';

class SignupCoreScreen extends StatefulWidget {
  const SignupCoreScreen({super.key});
  @override
  State<StatefulWidget> createState() => _SignupCoreScreenState();
}

class _SignupCoreScreenState extends State<SignupCoreScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController(); //비밀번호 확인

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SignupCoreHeader(onPress: backToLogin),
                      SignupCoreForm(
                        usernameController: usernameController,
                        passwordController: passwordController,
                        confirmController: confirmController,
                      ),
                      SignupCoreBottom(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void backToLogin() {
    Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) => SigninScreen()),
    );
  }
}
