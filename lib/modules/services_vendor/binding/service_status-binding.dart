import 'package:get/instance_manager.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/service_status_controller.dart';

class ServiceStatusBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceStatusController());
    // TODO: implement dependencies
  }
}
