import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:kkary_vendors/API/api_call.dart';
import 'package:kkary_vendors/API/models/response/vendor_products_response.dart';

class MartAllProductController extends GetxController {
  RxList<VendorProductsData> data = <VendorProductsData>[].obs;
  RxBool fetch = false.obs;

  Future<void> fetchVendorProducts() async {
    await CallAPI().vendorProducts().then((value) {
      data.value = value!.data!;

      fetch.value = true;
    });
  }

  @override
  void onInit() {
    fetchVendorProducts();
    super.onInit();
  }
}
