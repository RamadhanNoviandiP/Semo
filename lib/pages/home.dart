import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:semo/pages/bottomnavbar/favnavbar.dart';
import 'package:semo/pages/bottomnavbar/mainpage.dart';
import 'package:semo/pages/bottomnavbar/searchnavbar.dart';
import 'package:semo/pages/bottomnavbar/settingnavbar.dart';
import 'package:semo/pages/login.dart';
import 'package:semo/pages/Profile/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List<Widget> pages = [
    MainPage(),
    searchnavbarpages(),
    favnavbarpage(),
    SettingsNavbarPage(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.transparent,
            color: Colors.blueAccent,
            activeColor: Colors.blueAccent,
            tabBackgroundColor: Colors.white10,
            gap: 8,
            selectedIndex: currentIndex,
            onTabChange: onTap,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'home',
              ),
              GButton(
                icon: Icons.search,
                text: 'cari',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'likes',
              ),
              GButton(
                icon: Icons.settings,
                text: 'settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
