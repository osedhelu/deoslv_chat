import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});
  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  final String appBarTitle = "hola mun";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deoslv chat',
      home: Scaffold(
        appBar: AppBar(title: Text(appBarTitle)),
        body: Center(child: Text(appBarTitle)),
      ),
    );
  }
}
