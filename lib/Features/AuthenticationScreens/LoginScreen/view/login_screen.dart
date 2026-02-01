import 'package:flutter/material.dart';
import 'package:talk/Features/AuthenticationScreens/widgets/creds_field.dart';
import 'package:talk/UiHelper/widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            CredentialsTextField(
              labelText: "Email",
              controller: emailController,
              isPassword: false,
              validator: (value) {},
            ),
            CredentialsTextField(
              validator: (value) {},
              labelText: "Password",
              controller: passwordController,
              isPassword: true,
            ),
            PrimaryButton(),
          ],
        ),
      ),
    );
  }
}
