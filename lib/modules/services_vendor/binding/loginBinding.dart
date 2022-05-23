import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/loginController.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
