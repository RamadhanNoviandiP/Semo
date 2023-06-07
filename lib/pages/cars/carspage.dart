import 'package:flutter/material.dart';
import 'package:semo/pages/bottomnavbar/mainpage.dart';
import 'package:semo/pages/cars/bmw.dart';
import 'package:semo/pages/cars/hyundai.dart';
import 'package:semo/pages/cars/toyota.dart';
import 'package:semo/pages/cars/volskwaggen.dart';

class CarPage extends StatelessWidget {
  const CarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blueAccent),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildCarCategoryItem(
              context,
              'BMW',
              'assets/icons/bmw.png',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BMWPage()),
                );
              },
            ),
            buildCarCategoryItem(
              context,
              'Hyundai',
              'assets/icons/hyundai.png',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HyundaiPage()),
                );
              },
            ),
            buildCarCategoryItem(
              context,
              'Toyota',
              'assets/icons/toyota.png',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ToyotaPage()),
                );
              },
            ),
            buildCarCategoryItem(
              context,
              'Volkswagen',
              'assets/icons/volkswagen.png',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VolkswagenPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCarCategoryItem(BuildContext context, String name,
      String imagePath, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        child: Column(
          children: [
            Image.asset(
              imagePath,
              width: 120,
              height: 120,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
