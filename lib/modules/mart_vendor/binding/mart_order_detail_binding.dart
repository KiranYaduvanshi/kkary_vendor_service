import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_order_detail_controller.dart';

class MartOrderDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MartOrderDetailController());
  }
}
