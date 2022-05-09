import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_add_product_controller.dart';

class MartAddProdcutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MartAddProductController());
  }
}
