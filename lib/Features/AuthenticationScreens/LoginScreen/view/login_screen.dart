import 'package:flutter/material.dart';
import 'package:talk/Features/AuthenticationScreens/Model/validator.dart';
import 'package:talk/Features/AuthenticationScreens/widgets/creds_field.dart';
import 'package:talk/Features/HomeScreen/home_screen.dart';
import 'package:talk/UiHelper/widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              CredentialsTextField(
                labelText: "Email",
                controller: emailController,
                isPassword: false,
                validator: (value) => Validator.emailValidator(value),
              ),
              CredentialsTextField(
                validator: (value) => Validator.passValidator(value),
                labelText: "Password",
                controller: passwordController,
                isPassword: true,
              ),
              PrimaryButton(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
