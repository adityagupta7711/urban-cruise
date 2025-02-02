import 'package:flutter/material.dart';
import 'package:urban_cruise/showroom.dart';

class NotificationsPage extends StatelessWidget {
  final List<String> notifications = [
    "Your car booking for 12th Feb is confirmed!",
    "Reminder: Return your rental car by 15th Feb.",
    "Limited offer! Get 10% off on your next ride.",
  ];

   NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Colors.blueAccent,
         leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          onPressed: ()  {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Showroom()), 
      );
    }
  }, 
        ),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text(notifications[index]),
            ),
          );
        },
      ),
    );
  }
}
