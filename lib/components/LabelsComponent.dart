import 'package:flutter/material.dart';

class LabelsComponent extends StatelessWidget {
  final String rute;
  final String text;
  final String subText;

  const LabelsComponent(
      {super.key,
      required this.rute,
      required this.text,
      required this.subText});
  @override
  Widget build(BuildContext context) {
    final blue500 = Colors.blue.shade500;
    return SizedBox(
      child: Column(children: <Widget>[
        Text(
          text,
          style: const TextStyle(
              color: Colors.black54, fontWeight: FontWeight.w300),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, rute);
          },
          child: Text(subText, style: TextStyle(color: blue500)),
        ),
      ]),
    );
  }
}
