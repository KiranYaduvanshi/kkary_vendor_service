import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/profile_controller.dart';

class ProfileBinding implements Bindings{
  @override
  void dependencies() {
    Get.put( ProfileController());
  }

}