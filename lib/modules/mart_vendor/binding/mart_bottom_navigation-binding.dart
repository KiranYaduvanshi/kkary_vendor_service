import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_bottom_navigation_controller.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_earning_controller.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_home_controller.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_profile_screen_controller.dart';

class MartBottomNavigationBinding implements Bindings {
  @override
  void dependencies() {
    // initilaize register controller
    Get.lazyPut(() => MartBottomNavigationController());
    Get.lazyPut(() => MartHomeController());
    Get.lazyPut(() => MartEarningController());
    Get.lazyPut(() => MartProfileScreenController());
  }
}
