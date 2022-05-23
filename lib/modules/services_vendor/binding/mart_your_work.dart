import 'package:get/instance_manager.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/mart_your_work_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/registerController.dart';

class WorkClassBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkClassController());
    Get.lazyPut(() => RegisterController());
  }
}
