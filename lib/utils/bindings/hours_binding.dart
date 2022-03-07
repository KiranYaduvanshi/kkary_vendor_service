import 'package:get/instance_manager.dart';
import 'package:kkary_vendors/utils/controllers/hours_controller.dart';

class HoursBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HoursController()); 
  }
} 
