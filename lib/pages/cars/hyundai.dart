import 'package:flutter/material.dart';

class HyundaiPage extends StatelessWidget {
  const HyundaiPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hyundai Cars'),
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
                        'assets/images/ioniq.png',
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 10),
                      Text('Hyundai Ioniq'),
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
                  'assets/images/ioniq.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 50),
              Text(
                'Hyundai Ioniq',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
