import 'package:flutter/material.dart';
import 'package:semo/pages/Profile/profile.dart';
import 'package:semo/pages/login.dart';

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
              backgroundImage: AssetImage('assets/images/profile_image.png'),
              radius: 50,
            ),
            SizedBox(height: 20),
            Text(
              'Angger Achmad Rouf',
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
