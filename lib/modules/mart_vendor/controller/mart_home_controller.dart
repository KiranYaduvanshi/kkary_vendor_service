import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/utils/app_colors.dart';

class MartHomeController extends GetxController {
  List<String> list = [
    "Products",
    "Orders",
    "Delivered Orders",
    "Approved Orders",
    "Pending Orders",
    "Cancelled Orders"
  ];
  List<Color> color = [
    AppColors.purple,
    AppColors.orangeMid,
    AppColors.blueMid,
    AppColors.greenMid,
    AppColors.yellow,
    AppColors.redMid
  ];

  goToPage(String page) {
    if (page == "Products") {
      Get.toNamed(AppRoutes.allProductsMart, arguments: page);
    } else if (page == "Orders") {
      Get.toNamed(AppRoutes.orders, arguments: page);
    } else if (page == "Delivered Orders") {
      Get.toNamed(AppRoutes.orderDetailsMart, arguments: page);
    } else if (page == "Approved Orders") {
      Get.toNamed(AppRoutes.orderDetailsMart, arguments: page);
    } else if (page == "Pending Orders") {
      Get.toNamed(AppRoutes.orderDetailsMart, arguments: page);
    } else {
      Get.toNamed(AppRoutes.orderDetailsMart, arguments: page);
    }
  }
}
