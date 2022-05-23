import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kkary_vendors/API/api_call.dart';
import 'package:kkary_vendors/API/endpoints.dart';
import 'package:kkary_vendors/API/models/response/profie_response.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/profile_details.dart';

class ProfileController extends GetxController {
  Data? info;
  RxBool fetch = false.obs;
  final formkey = GlobalKey<FormState>();
  String uri = "";
  TextEditingController name= TextEditingController();
  TextEditingController bio= TextEditingController();
  TextEditingController address= TextEditingController();
  TextEditingController phone= TextEditingController();
  TextEditingController email= TextEditingController();

  Future<void> getUserInfo() async {
    if (kDebugMode) {
      print("done");

    }
    await CallAPI()
        .profileInfo()
        .then((value) => info = value?.data)
        .whenComplete(() {
          uri = "${Endpoints.imageBaseUrl}${info!.image}";
      name.text = info!.fname ?? "";
      bio.text = info!.bio ?? "";
      address.text = info!.address ?? "";
      phone.text = info!.mobile ?? "";
      email.text = info!.email ?? "";
      fetch.value = true;

    });
  }

  @override
  void onInit() {
    if (kDebugMode) {
      print("done");
    }
    getUserInfo();
    super.onInit();
  }
}
