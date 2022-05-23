import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_product_detail_controller.dart';

class MartProductDetailsBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => MartProductDetailsController());
  }

}