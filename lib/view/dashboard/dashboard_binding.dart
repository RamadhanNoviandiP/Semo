import 'package:get/get.dart';
import 'package:semo/controller/dashboard_controller.dart';
import 'package:semo/controller/home_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(dashboardController());
    Get.put(HomeController());
  }
}
