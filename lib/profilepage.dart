import 'package:flutter/material.dart';
import 'package:urban_cruise/showroom.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/user.png"),
              ),
            ),
            SizedBox(height: 20),
            Text("Name: Aditya Gupta", style: TextStyle(fontSize: 18)),
            Text("Email: adityagupta@gmail.com", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Divider(),
            ListTile(
              leading: Icon(Icons.history),
              title: Text("Rental History"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // no logout fn yet
                },
                child: Text("Logout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
