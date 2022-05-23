import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/partner_controller.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/utils/list_data.dart';

class LocationController extends GetxController {
  PartnerController controller = Get.find();

  Map<dynamic, dynamic> mapData = {};
  List<String> title = ListData.titles;

  onSelectRadioOption(int index) async {
    controller.location.value = controller.locationTiles[index];
    print(controller.location.value);
    Get.toNamed(AppRoutes.hours);
  }
}
