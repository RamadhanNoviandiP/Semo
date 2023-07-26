import 'package:flutter/material.dart';
import 'package:semo/component/main_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        MainHeader(),
      ],
    ));
  }
}