import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final Function() onPressed;
  const ButtonComponent({super.key, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      )),
      child: const SizedBox(
        height: 55,
        width: double.infinity,
        child: Center(
            child: Text(
          "Ingresar",
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
