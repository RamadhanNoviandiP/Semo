import 'package:flutter/material.dart';
import 'package:semo/pages/cars/bmw.dart';
import 'package:semo/pages/cars/hyundai.dart';
import 'package:semo/pages/cars/toyota.dart';
import 'package:semo/pages/cars/volskwaggen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class CardItem {
  final String imageAssets;
  final String nama;

  const CardItem({
    required this.imageAssets,
    required this.nama,
  });
}

class _MainPageState extends State<MainPage> {
  Widget buildCard(BuildContext context, CardItem item) => Container(
        width: 100,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VolkswagenPage()),
                        );
                      },
                      child: Ink.image(
                        image: AssetImage(item.imageAssets),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              item.nama,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      );

  List<CardItem> items = [
    CardItem(nama: 'BMW', imageAssets: 'assets/icons/bmw.png'),
    CardItem(nama: 'Hyundai', imageAssets: 'assets/icons/hyundai.png'),
    CardItem(nama: 'Toyota', imageAssets: 'assets/icons/toyota.png'),
    CardItem(nama: 'Volkswagen', imageAssets: 'assets/icons/volkswagen.png'),
  ];

  List<Car> cars = [
    Car(
      name: 'GOLF',
      description: 'mobil uatan VW',
      image: 'assets/images/golf.png',
    ),
    Car(
      name: 'i30n',
      description: 'mobil buatan BMW',
      image: 'assets/images/i30n.png',
    ),
    Car(
      name: 'Ioniq',
      description: 'mobil buatan Hyundai',
      image: 'assets/images/ioniq.png',
    ),
    Car(
      name: 'yaris',
      description: 'mobil keluaran toyota',
      image: 'assets/images/yaris.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blueAccent,
                    backgroundImage:
                        AssetImage('assets/images/profile_image.png'),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat Datang !',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Angger !',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 156,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  separatorBuilder: (context, index) => SizedBox(width: 12),
                  itemBuilder: (context, index) =>
                      buildCard(context, items[index]),
                ),
              ),
              SizedBox(height: 30),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemCount: cars.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(cars[index].name),
                        content: Column(
                          children: [
                            Image.asset(
                              cars[index].image,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 8),
                            Text(
                              cars[index].description,
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        cars[index].image,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8),
                      Text(
                        cars[index].name,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Car {
  final String name;
  final String description;
  final String image;

  const Car({
    required this.name,
    required this.description,
    required this.image,
  });
}
