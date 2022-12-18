import 'package:flutter/material.dart';

class LabelsComponent extends StatelessWidget {
  const LabelsComponent({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: const <Widget>[
        Text(
          "No tienes Cuenta?",
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Crea una ahora!",
          style: TextStyle(
              color: Color.fromRGBO(30, 136, 229, 1),
              fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
