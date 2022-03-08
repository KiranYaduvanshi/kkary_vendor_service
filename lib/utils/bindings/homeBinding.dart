import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/state_controller.dart';
import 'package:kkary_vendors/utils/controllers/registerController.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // initilaize register controller
    Get.lazyPut(() => RadioController());
  }
}
