import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/state_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // initilaize register controller
    Get.lazyPut(() => RadioController());
  }
}
