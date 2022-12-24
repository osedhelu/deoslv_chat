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
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Mi nombre',
            style: TextStyle(color: Colors.black87),
          ),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, "login");
            }),
      ),
      body: const Center(child: Text("User Screen")),
    );
  }
}
