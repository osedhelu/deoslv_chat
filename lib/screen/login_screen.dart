import 'package:chat_app/components/all.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String title = "Login Screen";
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const LogoComponent(title: "Messager"),
                FormLoginComponent(
                  onPressed: _eventLogin,
                  emailController: emailController,
                  passwordController: passwordController,
                ),
                const LabelsComponent(
                    text: "No tienes Cuenta?",
                    subText: "Crea una ahora!",
                    rute: "register"),
                const Text(
                  "Terminos y condiciones de uso",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _eventLogin() {
    print(
        "🚀 ~ file: LoginScreen.dart:39 ~ _LoginScreenState ~ _eventLogin ~ email: ${emailController.text}");
    print(
        "🚀 ~ file: LoginScreen.dart:41 ~ _LoginScreenState ~ _eventLogin ~ password: ${passwordController.text}");
    Navigator.pushReplacementNamed(context, 'users');
  }
}
