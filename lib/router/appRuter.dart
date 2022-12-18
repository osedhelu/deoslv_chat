// ignore: file_names
import 'package:deoslv_chat/screen/all.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'users': (_) => const UsersScreen(),
  'chat': (_) => const ChatScreen(),
  'login': (_) => const LoginScreen(),
  'register': (_) => const RegisterScreen(),
  'loading': (_) => (const LoadingScreen()),
  'app': (_) => (const AppScreen())
};
