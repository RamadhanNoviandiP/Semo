import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  final List<String> _CategoryLabel = [
    'SUV',
    "Sedan",
    "Hatchback",
    "Sport Sedan",
    "MPV",
    "Wagon"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Kategori',
            style: TextStyle(fontSize: 19),
          ),
          Container(
              height: 40,
              child: Row(
                children: [
                  Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _CategoryLabel.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ActionChip(
                                  backgroundColor: Colors.grey.shade300,
                                  onPressed: () {},
                                  label: Center(
                                    child: Text(
                                      _CategoryLabel[index],
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            );
                          })),
                ],
              ))
        ],
      ),
    );
  }
}
