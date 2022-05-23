import 'package:get/get.dart';
import 'package:kkary_vendors/API/api_call.dart';
import 'package:kkary_vendors/API/models/response/VendorEarnings.dart';

class MartEarningController extends GetxController{

  RxList<EarningData> vendorEarnings  = <EarningData>[].obs;
  var totalEarnings;

  Future<void> getHomeData() async {
    await CallAPI().vendorEarnings().then((value) {
      vendorEarnings.value = value!.data!;
      totalEarnings = value.earningToday;
      for(EarningData item in vendorEarnings ){
        print("${item.firstName}");
      }
    });
  }

  @override
  void onInit() {
    getHomeData();
    super.onInit();
  }
}