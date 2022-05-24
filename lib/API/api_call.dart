import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kkary_vendors/API/api_manager.dart';
import 'package:kkary_vendors/API/endpoints.dart';
import 'package:kkary_vendors/API/models/request/forgot_request.dart';
import 'package:kkary_vendors/API/models/request/login_post.dart';
import 'package:kkary_vendors/API/models/response/VendorEarnings.dart';
import 'package:kkary_vendors/API/models/response/VendorHome.dart';
import 'package:kkary_vendors/API/models/response/Vendor_product_details.dart';
import 'package:kkary_vendors/API/models/response/forgot_response.dart';
import 'package:kkary_vendors/API/models/response/login_response.dart';
import 'package:kkary_vendors/API/models/response/profie_response.dart';
import 'package:kkary_vendors/API/models/response/vendor_order_details.dart';
import 'package:kkary_vendors/API/models/response/vendor_products_response.dart';
import 'package:kkary_vendors/API/result_exception.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/shared_prefrences.dart';

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
        // PrefrenceUtil.setString(AppStrings.USER_EMAil, "${login.data!.email}");
        // PrefrenceUtil.setString(AppStrings.PASSWORD, "${params.password}");
        // PrefrenceUtil.setString(AppStrings.TOKEN, "${login.data!.token}");
        // PrefrenceUtil.setString(
        //     AppStrings.USER_NAME, "${login.data!.firstName}");
        // PrefrenceUtil.setString(AppStrings.USER_IMAGE, "${login.data!.image}");
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

  // API Get Vendor Home
  Future<VendorHome?> vendorHome() async {
    try {
      String url = Endpoints.vendorHome;

      var json = await APIManager().getAllCall(url: url);

      VendorHome vendorHome = VendorHome.fromJson(json);

      if (vendorHome.statusCode == 200) {
        return vendorHome;
      } else {
        String message =
            ResultStatusCheck(status: vendorHome.statusCode!).resultCheck();
        return vendorHome;
      }
    } on Exception catch (e) {
      return null;
    }
  }

  //API Vendor Earnings
  Future<VendorEarnings?> vendorEarnings() async {
    try {
      String url = Endpoints.vendorEarnings;

      var json = await APIManager().getAllCall(url: url);

      VendorEarnings vendorEarnings = VendorEarnings.fromJson(json);

      if (vendorEarnings.statusCode == 200) {
        return vendorEarnings;
      } else {
        String message =
            ResultStatusCheck(status: vendorEarnings.statusCode!).resultCheck();
        return vendorEarnings;
      }
    } on Exception catch (e) {
      return null;
    }
  }

  //API Vendor Products
  Future<VendorProductsResponse?> vendorProducts() async {
    try {
      String url = Endpoints.vendorProducts;

      var json = await APIManager().getAllCall(url: url);

      VendorProductsResponse vendorProductsResponse =
          VendorProductsResponse.fromJson(json);

      if (vendorProductsResponse.statusCode == 200) {
        return vendorProductsResponse;
      } else {
        String message =
            ResultStatusCheck(status: vendorProductsResponse.statusCode!)
                .resultCheck();
        return vendorProductsResponse;
      }
    } on Exception catch (e) {
      return null;
    }
  }

  //API Vendor Product Details
  Future<VendorProductsDetailsResponse?> vendorProductDetails(int id) async {
    try {
      String url = "${Endpoints.vendorProductDetails}id";

      var json = await APIManager().getAllCall(url: url);

      VendorProductsDetailsResponse vendorProductsDetailsResponse =
          VendorProductsDetailsResponse.fromJson(json);

      if (vendorProductsDetailsResponse.statusCode == 200) {
        return vendorProductsDetailsResponse;
      } else {
        String message =
            ResultStatusCheck(status: vendorProductsDetailsResponse.statusCode!)
                .resultCheck();
        return vendorProductsDetailsResponse;
      }
    } on Exception catch (e) {
      return null;
    }
  }

  //API Vendor Order Details
  Future<VendorOrderDetailsResponse?> vendorOrderDetails(String id) async {
    try {
      String url = "${Endpoints.vendorOrderDetails}$id";

      var json = await APIManager().getAllCall(url: url);

      VendorOrderDetailsResponse vendorOrderDetailsResponse =
          VendorOrderDetailsResponse.fromJson(json);

      if (vendorOrderDetailsResponse.statusCode == 200) {
        return vendorOrderDetailsResponse;
      } else {
        String message =
            ResultStatusCheck(status: vendorOrderDetailsResponse.statusCode!)
                .resultCheck();
        return vendorOrderDetailsResponse;
      }
    } on Exception catch (e) {
      return null;
    }
  }

  //API Profile info
  Future<ProfileResponse?> profileInfo() async {
    try {
      String url = "${Endpoints.profileInfo}";

      var json = await APIManager().getAllCall(url: url);

      ProfileResponse profileResponse = ProfileResponse.fromJson(json);

      if (profileResponse.statusCode == 200) {
        return profileResponse;
      } else {
        String message = ResultStatusCheck(status: profileResponse.statusCode!)
            .resultCheck();
        return profileResponse;
      }
    } on Exception catch (e) {
      print(e);
      return null;
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
