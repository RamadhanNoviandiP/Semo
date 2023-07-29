import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:semo/views/buyers/auth/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCg2NA2pldzNU55WMdTguJ6N540ddICcXs",
      appId: "1:877927497664:android:c9c117f65123b6c7811225",
      messagingSenderId: "877927497664",
      projectId: "sewa-mobil-app",
      storageBucket: "sewa-mobil-app.appspot.com",
    ),
  );
  runApp(const Semo());
}

class Semo extends StatelessWidget {
  const Semo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sewa Mobil',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Brand-Bold'),
      home: LoginScreen(),
    );
  }
}
