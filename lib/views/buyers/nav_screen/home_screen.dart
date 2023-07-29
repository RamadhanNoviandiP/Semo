import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:semo/views/buyers/nav_screen/widgets/banner_widget.dart';
import 'package:semo/views/buyers/nav_screen/widgets/category_text.dart';
import 'package:semo/views/buyers/nav_screen/widgets/welcome_text_widget.dart';
import 'package:semo/views/buyers/nav_screen/widgets/search_input_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WelcomeText(),
        SizedBox(
          height: 14,
        ),
        SearchInputWidget(),
        BannerWidget(),
        CategoryText()
      ],
    );
  }
}
