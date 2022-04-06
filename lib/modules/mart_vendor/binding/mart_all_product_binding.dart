import 'package:get/instance_manager.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_all_product_controller.dart';

class MartAllProductBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MartAllProductController());
  }
}
