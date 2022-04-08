import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/partner_controller.dart';
import 'package:kkary_vendors/utils/list_data.dart';

class WhereLiveController extends GetxController {
  PartnerController controller = Get.find();

  Map<dynamic, dynamic> mapData = {};
  List<String> title = ListData.titles;

  onSelectRadioOption(int index) async {
    controller.city.value = controller.cityTiles[index];
    Get.back();
  }
}
