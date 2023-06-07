import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:semo/pages/home.dart';
import 'package:semo/main.dart';
import 'package:semo/pages/register.dart';
import 'register.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
            Text('Sema Mobil Online'),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Login'),
            ),
            SizedBox(height: 40),
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
                  TextSpan(text: ' sekarang'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
