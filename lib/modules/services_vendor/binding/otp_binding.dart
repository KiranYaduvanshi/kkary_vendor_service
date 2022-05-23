import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/otp_controller.dart';

class OtpBinding implements Bindings{
  @override
  void dependencies() {
 Get.lazyPut(() => OtpController());
  }

}