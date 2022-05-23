import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/API/api_call.dart';
import 'package:kkary_vendors/API/models/response/vendor_order_details.dart';

class MartOrderDetailController extends GetxController {
  RxBool fetch = false.obs;
  VendorOrderDetails? data;

  Future<void> fetchDetails() async {
    await CallAPI().vendorOrderDetails("OD3705628752").then((value) {
      data = value!.data!;
      if (kDebugMode) {
        print("${data!.productName}");
      }
    }).whenComplete(() => fetch.value = true);
  }

  String getPayment(){
    if(data?.paymentMethod=="1"){
      return "Cash On Delivery";
    }else if(data?.paymentMethod=="2"){
      return "Card";
    }else{
      return "UPI";
    }
  }

  @override
  void onInit() {
    fetchDetails();
    super.onInit();
  }
}
