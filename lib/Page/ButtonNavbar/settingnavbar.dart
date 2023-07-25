import 'package:flutter/material.dart';
import 'package:semo/Page/Login/login.dart';
import 'package:semo/Page/Profile/profile.dart';

class SettingsNavbarPage extends StatelessWidget {
  const SettingsNavbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile_image.jpg'),
              radius: 50,
            ),
            SizedBox(height: 20),
            Text(
              'Ramadhan Noviandi Putra',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.blueAccent,
              ),
              title: Text('Profile'),
              textColor: Colors.blueAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.blueAccent,
              ),
              title: Text('Logout'),
              textColor: Colors.blueAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
