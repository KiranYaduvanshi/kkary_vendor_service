import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_bottom_navigation_controller.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_earning_controller.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_home_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/order_ctl.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/service_status_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/vendor_bottom_navigation_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/vendor_home_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/views/vendor_services_status.dart';

class VendorBottomNavigationBinding implements Bindings {
  @override
  void dependencies() {
    // initilaize register controller
    Get.lazyPut(() => VendorBottomNavigationController());
    Get.lazyPut(() => VendorHomeController());
    Get.lazyPut(() => OrderController());
    Get.lazyPut(() => ServiceStatusController());
  }
}
