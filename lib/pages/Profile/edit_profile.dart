import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfile> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  String profileImage = 'assets/images/profile_image.png';

  void notifikasiberhasilmengubahprofile() {
    final snackBar = SnackBar(
      content: Text('Perubahan profil berhasil disimpan'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
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
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan kode untuk memilih atau mengambil gambar dari galeri
                    },
                    child: Text('Ganti Foto Profil'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
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
            SizedBox(height: 16.0),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Nomor Telepon',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: notifikasiberhasilmengubahprofile,
              child: Text('Simpan Perubahan'),
            ),
          ],
        ),
      ),
    );
  }
}
