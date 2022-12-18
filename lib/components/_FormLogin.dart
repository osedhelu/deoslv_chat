// ignore: file_names

import 'package:deoslv_chat/components/InputComponent.dart';
import 'package:deoslv_chat/components/all.dart';
import 'package:flutter/material.dart';

class FormLoginComponent extends StatelessWidget {
  FormLoginComponent({super.key, required this.onPressed});
  final Function(String email, String pass) onPressed;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(children: <Widget>[
        CustonInput(
            icon: Icons.email_outlined,
            placeholder: "Email",
            keyboardType: TextInputType.emailAddress,
            textController: emailController),
        CustonInput(
            icon: Icons.lock_outline,
            placeholder: "Contraseña",
            isPassword: true,
            textController: passwordController),
        ButtonComponent(
          onPressed: () =>
              onPressed(emailController.text, passwordController.text),
        )
      ]),
    );
  }
}
