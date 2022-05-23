import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/shared_prefrences.dart';

class MartProfileScreenController extends GetxController {
  var email;
  var name;
  @override
  void onInit() {
    email = PrefrenceUtil.getString(AppStrings.USER_EMAil, "email");
    name = PrefrenceUtil.getString(AppStrings.USER_NAME, "name");

    super.onInit();
  }
}
