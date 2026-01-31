import 'package:flutter/material.dart';
import 'package:talk/Features/AuthenticationScreens/widgets/creds_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
            ),
            CredentialsTextField(
              labelText: "Password",
              controller: passwordController,
              isPassword: true,
            ),
          ],
        ),
      ),
    );
  }
}
