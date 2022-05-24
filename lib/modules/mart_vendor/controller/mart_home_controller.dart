import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/API/api_call.dart';
import 'package:kkary_vendors/API/models/response/VendorHome.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/utils/app_colors.dart';

class MartHomeController extends GetxController {
  VendorHomeData? vendorHomeData = VendorHomeData();
  RxBool fetch = false.obs;

  List<String> list = [
    "Products",
    "Orders",
    "Delivered Orders",
    "Approved Orders",
    "Pending Orders",
    "Cancelled Orders",
    "Under Shipping"
  ];
  List<Color> color = [
    AppColors.purple,
    AppColors.orangeMid,
    AppColors.blueMid,
    AppColors.greenMid,
    AppColors.yellow,
    AppColors.redMid,
    AppColors.blueNavy
  ];

  int? count(String data) {
    if (data == "Orders") {
      return vendorHomeData!.totalOrders;
    } else if (data == "Delivered Orders") {
      return vendorHomeData!.totalDelivered;
    } else if (data == "Products") {
      return vendorHomeData!.productCount;
    } else if (data == "Approved Orders") {
      return vendorHomeData!.approvedOrder;
    } else if (data == "Pending Orders") {
      return vendorHomeData!.pendingOrders;
    } else if (data == "Cancelled Orders") {
      return vendorHomeData!.cancelledOrder;
    } else if (data == "Under Shipping"){
      return vendorHomeData!.underShipping;
    }
  }

  goToPage(String page) {
    if (page == "Products") {
      Get.toNamed(AppRoutes.allProductsMart, arguments: page);
    } else if (page == "Orders") {
      Get.toNamed(AppRoutes.orderDetailsMart, arguments: page);
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

  Future<void> getHomeData() async {
    await CallAPI().vendorHome().then((value) {
      vendorHomeData = value!.data;
      fetch.value = true;
    });
  }

  @override
  void onInit() {
    getHomeData();
    super.onInit();
  }
}
