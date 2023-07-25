import 'package:flutter/material.dart';
import 'package:semo/Page/Profile/edit_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueAccent),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Colors.blueAccent, fontWeight: FontWeight.normal),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/images/profile_image.jpg'),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
                child: Text(
              'Ramadhan Noviandi Putra',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )),
            const SizedBox(height: 16.0),
            const Text(
              'User Profile',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Name'),
              subtitle: Text('Ramadhan Noviandi Putra'),
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('Rama@ambatukam.com'),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              subtitle: Text('+62 123-456-789'),
            ),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfile(),
                    ),
                  );
                },
                child: Text('Edit Profile'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
