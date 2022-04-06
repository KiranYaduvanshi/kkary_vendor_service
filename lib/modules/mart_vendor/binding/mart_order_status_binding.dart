import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_order_status_controller.dart';

class MartOrderStatusBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MartOrderStatusController());
  }
}
