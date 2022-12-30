import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoComponent extends StatelessWidget {
  final String title;
  const LogoComponent({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/deoslv.svg';
    final Widget svg = SvgPicture.asset(
      assetName,
      color: Colors.blue.shade400,
      semanticsLabel: 'A red up arrow',
    );
    return Center(
        child: Container(
      margin: const EdgeInsets.only(top: 50),
      width: 170,
      child: Column(children: <Widget>[
        SizedBox(
          height: 100,
          child: svg,
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
