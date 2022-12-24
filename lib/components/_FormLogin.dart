// ignore: file_names

import 'package:deoslv_chat/components/InputComponent.dart';
import 'package:deoslv_chat/components/all.dart';
import 'package:flutter/material.dart';

class FormLoginComponent extends StatelessWidget {
  const FormLoginComponent(
      {super.key,
      required this.onPressed,
      required this.emailController,
      required this.passwordController});
  final Function() onPressed;
  final TextEditingController emailController;
  final TextEditingController passwordController;

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
          onPressed: onPressed,
        )
      ]),
    );
  }
}
