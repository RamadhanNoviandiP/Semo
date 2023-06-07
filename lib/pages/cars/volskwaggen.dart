import 'package:flutter/material.dart';

class VolkswagenPage extends StatelessWidget {
  const VolkswagenPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volkswagen'),
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
                        'assets/images/golf.png',
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 10),
                      Text('VW GOLF'),
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
                  'assets/images/golf.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 50),
              Text(
                'VW GOLF',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
