import 'package:flutter/material.dart';
import 'package:semo/pages/home.dart';
import 'package:semo/pages/home.dart';
import 'pages/login.dart';
import 'package:semo/pages/Profile/profile.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:semo/pages/login.dart';

void main() {
  runApp(Semo());
}

class Semo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Semo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: LoginPage(),
    );
  }
}
