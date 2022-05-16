import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kkary_vendors/API/api_manager.dart';
import 'package:kkary_vendors/API/endpoints.dart';
import 'package:kkary_vendors/API/models/request/forgot_request.dart';
import 'package:kkary_vendors/API/models/request/login_post.dart';
import 'package:kkary_vendors/API/models/response/forgot_response.dart';
import 'package:kkary_vendors/API/models/response/login_response.dart';
import 'package:kkary_vendors/API/result_exception.dart';
import 'package:kkary_vendors/routes/app_routes.dart';

import 'models/response/login_response.dart';

class CallAPI {
  //API Login
  Future<void> login({required LoginPost params}) async {
    String url = "${Endpoints.login}";
    try {
      var json = await APIManager().postAPICall(url: url, param: params);

      LoginResponse login = LoginResponse.fromJson(json);
      debugPrint("Status  ${login.statusCode.toString()}");
      debugPrint("Message ${login.message}");
      if (login.statusCode == 200) {
        debugPrint("Login..... Sucesss");
        debugPrint("Login..  ${params.email} ${params.password}");
        // _loginBool = false;
        // PrefrenceUtil.setString(
        //     AppStrings.USER_EMAil, "${login.data!.email}");
        // PrefrenceUtil.setString(AppStrings.PASSWORD, "${params.password}");
        // PrefrenceUtil.setString(AppStrings.TOKEN, "${login.data!.token}");
        // PrefrenceUtil.setString(
        //     AppStrings.USER_NAME, "${login.data!.firstName}");
        // PrefrenceUtil.setString(
        //     AppStrings.USER_IMAGE, "${login.data!.image}");
        // PrefrenceUtil.setString(
        //     AppStrings.USER_ADDRESS, "${login.data!.address}");
        // PrefrenceUtil.setString(AppStrings.USER_BIO, "${login.data!.bio}");
        // PrefrenceUtil.setString(
        //     AppStrings.USER_BUSINESS, "${login.data!.businessName}");

        Timer(Duration(seconds: 1), () {
          params.userType == "1"
              ? Get.toNamed(AppRoutes.bottomNavigationMart)
              : Get.toNamed(AppRoutes.partner);
        });
      } else {
        print("Login..... Fail");
        String message = ResultStatusCheck(
                status: login.statusCode!, messageResponse: login.message!)
            .resultCheck();
      }
    } on Exception catch (e) {
      print(e);
    } finally {
      print("Done");
    }
  }

  //API Forgot
  Future<ForgotResponse> forgot({required ForgotRequest params}) async {
    String url = "${Endpoints.forgot}";
    ForgotResponse data = ForgotResponse();
    try {
      var json = await APIManager().postAPICall(url: url, param: params);

      data = ForgotResponse.fromJson(json);
      debugPrint("Status  ${data.statusCode.toString()}");
      debugPrint("Message ${data.message}");
      if (data.statusCode == 200) {
        // _loginBool = false;
        // PrefrenceUtil.setString(
        //     AppStrings.USER_EMAil, "${login.data!.email}");
        // PrefrenceUtil.setString(AppStrings.PASSWORD, "${params.password}");
        // PrefrenceUtil.setString(AppStrings.TOKEN, "${login.data!.token}");
        // PrefrenceUtil.setString(
        //     AppStrings.USER_NAME, "${login.data!.firstName}");
        // PrefrenceUtil.setString(
        //     AppStrings.USER_IMAGE, "${login.data!.image}");
        // PrefrenceUtil.setString(
        //     AppStrings.USER_ADDRESS, "${login.data!.address}");
        // PrefrenceUtil.setString(AppStrings.USER_BIO, "${login.data!.bio}");
        // PrefrenceUtil.setString(
        //     AppStrings.USER_BUSINESS, "${login.data!.businessName}");

        // Timer(Duration(seconds: 1), () {
        //   params.userType == "1"
        //       ? Get.toNamed(AppRoutes.bottomNavigationMart)
        //       : Get.toNamed(AppRoutes.partner);
        // });
        return data;
      } else {
        print("Login..... Fail");
        String message = ResultStatusCheck(
                status: data.statusCode!, messageResponse: data.message!)
            .resultCheck();

        return data;
      }
    } on Exception catch (e) {
      print(e);
      return data;
    } finally {
      print("Done");
    }
  }
}

//API Get Sub Categories
//   Future<List<SubCategoryResult>> fetchSubCategoryAPI(
//       {required BuildContext context, required int id}) async {
//     List<SubCategoryResult> _subCategoryResult = [];
//
//     try {
//       String url = "${Endpoints.subCategory}/$id";
//
//       var json = await APIManager().getAllCall(url: url);
//
//       SubCategory subCategory = SubCategory.fromJson(json);
//
//       if (subCategory.statusCode == 200) {
//         Loader.hide();
//         return _subCategoryResult = subCategory.result!;
//       } else {
//         Loader.hide();
//         String message =
//             ResultStatusCheck(status: subCategory.statusCode!).resultCheck();
//         ToastVx(context: context, message: message);
//         return _subCategoryResult = [];
//       }
//     } on Exception catch (e) {
//       Loader.hide();
//       ToastVx(context: context, message: e.toString());
//       return _subCategoryResult = [];
//     }
//   }
