import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/product_detail_controller.dart';

class ProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDetailController());
  }
}
