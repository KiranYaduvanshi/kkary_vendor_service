import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/API/api_call.dart';import 'package:kkary_vendors/API/models/response/Vendor_product_details.dart';

class MartProductDetailsController extends GetxController {
  Result data = Result();
  RxBool fetch = false.obs;

  TextEditingController mrp = TextEditingController();
  TextEditingController sp = TextEditingController();
  TextEditingController tax = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController deliveryCharges = TextEditingController();
  TextEditingController summery = TextEditingController();
  TextEditingController sku = TextEditingController();
  TextEditingController tags = TextEditingController();


  Future<void> fetchDetails() async {
    await CallAPI().vendorProductDetails(23).then((value) {
      data = value!.result!;
      mrp.text = "${data.mrp}";
      sp.text = "${data.bestPrice}";
      tax.text = "${data}";
      name.text = "${data.productName}";
      description.text = "${data.productImages}";
      deliveryCharges.text = "${data.discountPrice}";
      summery.text = "${data.summary}";
      sku.text = "${data.productSku}";
      tags.text = "${data.productTags}";

    }).whenComplete(() =>fetch.value = true);
  }
  @override
  void onInit() {
    fetchDetails();
    super.onInit();
  }
}
