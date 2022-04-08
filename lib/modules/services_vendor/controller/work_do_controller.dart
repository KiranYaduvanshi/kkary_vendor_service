import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/partner_controller.dart';
import 'package:kkary_vendors/utils/list_data.dart';

class WorkDoScreenController extends GetxController {
  PartnerController controller = Get.find();

  Map<dynamic, dynamic> mapData = {};
  List<String> title = ListData.titles;

  @override
  void onInit() {
    super.onInit();
    title.map((e) => mapData[e] = 0);
    //  onSelectRadioOption();

    // for (int i = 0; mapData.length > i; i++) {
    //   print("skdfkdjmfdf");
    //   String keys = mapData.keys.elementAt(i);
    //   String value = mapData[keys];
    //   print("$keys  $value");
    // }
  }

  onSelectRadioOption(int index) async {
    controller.work.value = controller.workTitle[index];
    Get.back();
  }
}
