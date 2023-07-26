import 'package:get/get.dart';

class dashboardController extends GetxController {
  var tabIndex = 0;

  void updateIndex(int index) {
    tabIndex = index;
    update();
  }
}
