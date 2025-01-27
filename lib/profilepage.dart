import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page")),
      body: Center(
        child: Text(
          "Welcome to Profile Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}