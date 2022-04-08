import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:kkary_vendors/utils/app_icons.dart';

class LoginController extends GetxController {
  FocusNode mobileFn = FocusNode();
  FocusNode passFn = FocusNode();
  TextEditingController phoneEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool eye = false.obs;

  Icon eyeVisibility() {
    return eye.value ? AppIcons.visibilityOff : AppIcons.visibility;
  }
}
