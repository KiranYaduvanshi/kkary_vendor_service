import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/order_ctl.dart';

class OrderBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => OrderController());
  }
}
