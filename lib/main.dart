import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:semo/route/app_page.dart';
import 'package:semo/route/app_route.dart';
import 'package:semo/theme/app_theme.dart';

void main() {
  runApp(Semo());
}

class Semo extends StatelessWidget {
  const Semo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPage.list,
      initialRoute: AppRoute.dashboard,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
