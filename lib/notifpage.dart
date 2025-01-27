import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications Page")),
      body: Center(
        child: Text(
          "Welcome to Notifications Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
