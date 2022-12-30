import 'package:flutter/material.dart';

class CustonInput extends StatelessWidget {
  const CustonInput(
      {Key? key,
      required this.icon,
      required this.placeholder,
      required this.textController,
      this.keyboardType = TextInputType.text,
      this.isPassword = false})
      : super(key: key);
  final IconData icon;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 30),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5,
                  offset: const Offset(0, 5))
            ]),
        child: TextField(
          controller: textController,
          autocorrect: false,
          keyboardType: keyboardType,
          obscureText: isPassword,
          decoration: InputDecoration(
              prefixIcon: Icon(icon),
              border: InputBorder.none,
              hintText: placeholder,
              focusedBorder: InputBorder.none),
        ));
  }
}
