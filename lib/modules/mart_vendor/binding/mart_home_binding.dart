import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_home_controller.dart';

class MartHomeBinding implements Bindings {
  @override
  void dependencies() {
    // initilaize register controller
    Get.lazyPut(() => MartHomeController());
  }
}
