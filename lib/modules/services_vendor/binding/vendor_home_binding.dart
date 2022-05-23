import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_home_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/vendor_home_controller.dart';

class VendorHomeBinding implements Bindings {
  @override
  void dependencies() {
    // initilaize register controller
    Get.lazyPut(() => VendorHomeController());
  }
}
