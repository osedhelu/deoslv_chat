// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoComponent extends StatelessWidget {
  final String title;
  const LogoComponent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/deoslv.svg';
    return Center(
        child: Container(
      margin: const EdgeInsets.only(top: 50),
      width: 170,
      child: Column(children: <Widget>[
        SizedBox(
          height: 100,
          child: SvgPicture.asset(
            key: const Key("hola mundo"),
            color: Colors.blue.shade400(),
            assetName,
            semanticsLabel: 'A red up arrow',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 20),
        ),
      ]),
    ));
  }
}
