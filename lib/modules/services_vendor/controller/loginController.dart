import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:kkary_vendors/API/api_call.dart';
import 'package:kkary_vendors/API/models/request/forgot_request.dart';
import 'package:kkary_vendors/API/models/request/login_post.dart';
import 'package:kkary_vendors/API/models/response/forgot_response.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/utils/app_icons.dart';

class LoginController extends GetxController {
  String token = "";
  String user = "";
  FocusNode mobileFn = FocusNode();
  FocusNode passFn = FocusNode();
  final formKey = GlobalKey<FormState>();
  final fformKey = GlobalKey<FormState>();
  RxBool loginFetch = true.obs;

  TextEditingController phoneEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool eye = false.obs;

  Icon eyeVisibility() {
    return eye.value ? AppIcons.visibilityOff : AppIcons.visibility;
  }

  deviceToken() async {
    token = (await FirebaseMessaging.instance.getToken())!;
    phoneEmailController.text = "ankittest@gmail.com";
    passwordController.text = "12345678";
    print("Login Token..... $token");
  }

  Future<void> login(String user) async {
    loginFetch.value = false;
    LoginPost loginPost = LoginPost(
        email: phoneEmailController.text,
        password: passwordController.text,
        userType: "1",
        deviceToken: token);
    // debugPrint("${loginPost.userType} ${loginPost.email} ${loginPost.password} ${loginPost.deviceToken}");
    await CallAPI()
        .login(params: loginPost)
        .whenComplete(() => loginFetch.value = true);

    // ForgotPost post = ForgotPost(email: "ankitemail@gmail.com" , userType: "2");
    // await CallAPI().login(params: LoginPost());
  }

  // forgotPassword(String user) async {
  //   ForgotRequest postData =  ForgotRequest(email: phoneEmailController.text, userType: user);
  //
  //   ForgotResponse result = await CallAPI()
  //       .forgot( params: postData);
  //
  // }

  // handleEmail(String value) {
  //   if (EmailValidator.validate(value)) {
  //     phoneEmailController.text = value;
  //     return null;
  //   }
  //   return "Please Enter Valid Email";
  // }

  // submitEmail() async {
  //   if (_formKey.currentState!.validate()) {
  //     await forgotPassword();
  //     // Navigator.pushNamed(context, MyRoutes.otpPage);
  //   }
  // }

  @override
  void onInit() {
    deviceToken();
    super.onInit();
  }

  String? handleEmail() {
    if (phoneEmailController.text.isNotEmpty) {
      return null;
    } else {
      return "Field Should'nt Empty";
    }
  }

  String? handlePassword() {
    if (passwordController.text.length < 8) {
      return "Size must be greater than 8";
    } else {
      return null;
    }
  }

  userVerification(String user) async {
    // loading.value = true;
    if (fformKey.currentState!.validate()) {
      // print(fformKey.currentState!.validate());
      // Timer(const Duration(seconds: 3), () {
      //   Get.toNamed(AppRoutes.home);
      // });
      LoginPost loginPost = LoginPost(
          email: phoneEmailController.text,
          password: passwordController.text,
          userType: "1",
          deviceToken: "");
      debugPrint(
          "kkkkkkk ${loginPost.userType} ${loginPost.email} ${loginPost.password} ${loginPost.deviceToken}");
      await CallAPI().login(params: loginPost);
    } else {
      print("Credentail is invalid ");
    }
  }

  userVerificationForgot() async {
    // loading.value = true;
    if (formKey.currentState!.validate()) {
      print(formKey.currentState!.validate());
      ForgotRequest postData =
          ForgotRequest(email: phoneEmailController.text, userType: user);

      ForgotResponse result = await CallAPI().forgot(params: postData);
      debugPrint(result.message);
    } else {
      print("Credentail is invalid ");
    }
  }
}
