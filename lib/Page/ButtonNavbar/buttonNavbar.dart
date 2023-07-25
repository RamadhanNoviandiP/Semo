import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:semo/Page/mainHomePage.dart';
import 'searchnavbar.dart';
import 'settingnavbar.dart';
import 'favnavbar.dart';

class ButtonNavBar extends StatefulWidget {
  @override
  _ButtonNavBarState createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  int currentIndex = 0;

  List<Widget> pages = [
    mainHomePage(),
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
