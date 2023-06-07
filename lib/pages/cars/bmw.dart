import 'package:flutter/material.dart';

class BMWPage extends StatelessWidget {
  const BMWPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMW CAR'),
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
                        'assets/images/i30n.png',
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 10),
                      Text('BMW i30n'),
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
                  'assets/images/i30n.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 50),
              Text(
                'BMW i30n',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
