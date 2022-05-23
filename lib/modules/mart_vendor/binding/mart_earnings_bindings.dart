import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_earning_controller.dart';

class MartEarningBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(MartEarningController());
  }
}