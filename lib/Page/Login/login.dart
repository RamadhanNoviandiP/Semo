import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:semo/Page/Login/register.dart';
import 'package:semo/Page/ButtonNavbar/buttonNavbar.dart';
import 'package:semo/Page/mainHomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'se',
                  style: TextStyle(
                      fontSize: 64,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Mo',
                  style: TextStyle(
                      fontSize: 64,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            const Text('Sewa Mobil Online'),
            const SizedBox(height: 10),
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
            const SizedBox(height: 16.0),
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
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ButtonNavBar()),
                );
              },
              child: Text('Login'),
            ),
            const SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: 'Belum punya akun? ',
                children: <TextSpan>[
                  TextSpan(
                    text: 'Daftar',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                  ),
                  const TextSpan(text: ' sekarang'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
