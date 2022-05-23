import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/API/api_call.dart';
import 'package:kkary_vendors/API/models/response/VendorEarnings.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/shared_prefrences.dart';

class MartEarningController extends GetxController {
  RxList<EarningData> vendorEarnings = <EarningData>[].obs;
  var totalEarnings;
  var email;

  Future<void> getHomeData() async {
    await CallAPI().vendorEarnings().then((value) {
      vendorEarnings.value = value!.data!;
      totalEarnings = value.earningToday;
      for (EarningData item in vendorEarnings) {
        print("${item.firstName}");
      }
    });
  }

  @override
  void onInit() {
    getHomeData();
    email = PrefrenceUtil.getString(AppStrings.USER_EMAil, "email");

    super.onInit();
  }
}
