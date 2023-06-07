import 'package:flutter/material.dart';

class ToyotaPage extends StatelessWidget {
  const ToyotaPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toyota Cars'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/yaris.png',
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 10),
                      Text('Toyota Yaris'),
                    ],
                  ),
                );
              },
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.grey,
                child: Image.asset(
                  'assets/images/yaris.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 50),
              Text(
                'Toyota Yaris',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
