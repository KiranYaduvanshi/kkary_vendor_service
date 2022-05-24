import 'package:get/get.dart';
import 'package:kkary_vendors/routes/app_routes.dart';

class OrderController extends GetxController {
  List<String> servicesList = [
    "Massager",
    "Hair Dresser",
    "Stylier",
    "Nail Artist",
    "Hair Styler",
  ];

  void goto(){
    print("Clicked");
    Get.toNamed(AppRoutes.otp);
  }
}
