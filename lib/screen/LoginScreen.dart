import 'package:deoslv_chat/components/all.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String title = "Login Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const LogoComponent(),
            FormLoginComponent(onPressed: _eventLogin),
            const LabelsComponent(),
            const Text(
              "Terminos y condiciones de uso",
              style: TextStyle(
                fontWeight: FontWeight.w200,
              ),
            )
          ],
        ),
      ),
    );
  }

  _eventLogin(String email, String pass) {
    print(
        "🚀 ~ file: LoginScreen.dart:22 ~ _LoginScreenState ~ FormLoginComponent ~ $email");
    print(
        "🚀 ~ file: LoginScreen.dart:22 ~ _LoginScreenState ~ FormLoginComponent ~ $pass");
  }
}
