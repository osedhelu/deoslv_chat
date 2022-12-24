import 'package:deoslv_chat/components/InputComponent.dart';
import 'package:deoslv_chat/components/all.dart';
import 'package:flutter/material.dart';

class FormRegisterComponent extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController userController;
  final TextEditingController passwordController;
  const FormRegisterComponent(
      {super.key,
      required this.onPressed,
      required this.emailController,
      required this.userController,
      required this.passwordController});
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(children: <Widget>[
        CustonInput(
            icon: Icons.supervised_user_circle_outlined,
            placeholder: "Nombre",
            keyboardType: TextInputType.emailAddress,
            textController: userController),
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
        ButtonComponent(onPressed: onPressed)
      ]),
    );
  }
}
