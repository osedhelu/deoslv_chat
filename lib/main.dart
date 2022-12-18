import 'package:deoslv_chat/router/all.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Deoslv Chat",
    initialRoute: "login",
    routes: appRoutes,
  ));
}
