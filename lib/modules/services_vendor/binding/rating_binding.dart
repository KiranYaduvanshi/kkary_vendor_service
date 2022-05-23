import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/rating_controller.dart';

class RatingBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => RatingController());
  }

}