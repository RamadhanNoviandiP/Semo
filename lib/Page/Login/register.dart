import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:semo/Page/Login/login.dart';
import 'package:flutter/cupertino.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.blueAccent),
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.blueAccent),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Halaman Register',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: CupertinoColors.systemGrey4),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)),
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: CupertinoColors.systemGrey4),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)),
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: CupertinoColors.systemGrey4),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)),
                labelText: 'Nomor HP',
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Selamat berhasil mendaftar'),
                      ),
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text('daftar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
