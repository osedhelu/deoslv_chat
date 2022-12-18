import 'package:flutter/material.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});
  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  late String title = "Users";
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(title));
  }
}
