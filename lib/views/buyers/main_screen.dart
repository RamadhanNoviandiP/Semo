import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:semo/views/buyers/nav_screen/account_screen.dart';
import 'package:semo/views/buyers/nav_screen/cart_screen.dart';
import 'package:semo/views/buyers/nav_screen/category_screen.dart';
import 'package:semo/views/buyers/nav_screen/home_screen.dart';
import 'package:semo/views/buyers/nav_screen/search_screen.dart';
import 'package:semo/views/buyers/nav_screen/store_screen.dart';
import 'package:semo/views/buyers/nav_screen/widgets/category_text.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: (value) {
            setState(() {
              _pageIndex = value;
            });
          },
          unselectedItemColor: Color.fromARGB(255, 0, 0, 0),
          selectedItemColor: Colors.black87,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/explore.svg', width: 20),
              label: 'KATEGORI',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/shop.svg', width: 20),
              label: 'SEWA',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/cart.svg', width: 20),
              label: 'KERANJANG',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/search.svg', width: 20),
              label: 'CARI',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/account.svg', width: 20),
              label: 'AKUN',
            ),
          ]),
      body: _pages[_pageIndex],
    );
  }
}
