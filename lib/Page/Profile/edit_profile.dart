import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:semo/Page/Profile/profile.dart';
import 'package:semo/Page/Login/login.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfile> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController NameController = TextEditingController();

  String profileImage = 'assets/images/profile_image.jpg';

  void notifikasiberhasilmengubahprofile() {
    final snackBar = SnackBar(
      content: Text('Perubahan profil berhasil disimpan'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.blueAccent),
        backgroundColor: Colors.transparent,
        title: Text(
          'Edit Profile',
          style: TextStyle(
              color: Colors.blueAccent, fontWeight: FontWeight.normal),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage(profileImage),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Ganti Foto Profil'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: NameController,
              decoration: InputDecoration(
                labelText: 'Nama',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'email'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                labelText: 'Nomor Telepon',
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: notifikasiberhasilmengubahprofile,
                child: Text('Simpan Perubahan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
