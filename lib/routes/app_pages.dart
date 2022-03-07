import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/views/Register/partner.dart';
import 'package:kkary_vendors/modules/services_vendor/views/Register/work_do.dart';
import 'package:kkary_vendors/routes/app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.workDo;

  //  static const INITIAL = Routes.WELCOME_CUSTOMER_SCREEN;
  static final routes = [
    GetPage(
      name: AppRoutes.partner,
      page: () => const Partner(),
    ),
    GetPage(
      name: AppRoutes.workDo,
      page: () => const WorkDo(),
    ),
  ];
}
