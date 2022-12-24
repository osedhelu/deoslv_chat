import 'package:deoslv_chat/components/all.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late String title = "Login Screen";
  final emailController = TextEditingController();
  final userController = TextEditingController();
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
                const LogoComponent(title: "Register"),
                FormRegisterComponent(
                    onPressed: _eventLogin,
                    userController: userController,
                    emailController: emailController,
                    passwordController: passwordController),
                const LabelsComponent(
                    text: "Ya tengo una cuenta",
                    subText: "iniciar ahora",
                    rute: "login"),
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
        "🚀 ~ file: LoginScreen.dart:41 ~ _LoginScreenState ~ _eventLogin ~ password: ${userController.text}");
  }
}
