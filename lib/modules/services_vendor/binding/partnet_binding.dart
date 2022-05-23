import 'package:get/instance_manager.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/location_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/partner_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/where_live_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/work_do_controller.dart';

class PartnerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PartnerController(), fenix: true);
    Get.lazyPut(() => WorkDoScreenController(), fenix: true);
    Get.lazyPut(() => LocationController(), fenix: true);
    Get.lazyPut(() => WhereLiveController(), fenix: true);
  }
}
