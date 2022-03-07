import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/views/Register/work_do.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/Register/partner.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/hours.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/work/work.dart';
import 'package:kkary_vendors/modules/services_vendor/views/location/location.dart';
import 'package:kkary_vendors/modules/services_vendor/views/where_live/whereLive.dart';
import 'package:kkary_vendors/modules/services_vendor/views/work_do/wordDo.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/utils/bindings/hours_binding.dart';

class AppPages {
  static const INITIAL = AppRoutes.workDoRegister;

  //  static const INITIAL = Routes.WELCOME_CUSTOMER_SCREEN;
  static final routes = [
    GetPage(
      name: AppRoutes.partner,
      page: () => const Partner(),
    ),
    GetPage(
      name: AppRoutes.workDoRegister,
      page: () => const WorkDo(),
    ),
    GetPage(
      name: AppRoutes.hours,
      page: () => HoursWidget(),
      binding: HoursBinding(),
    ),
    GetPage(
      name: AppRoutes.yourWork,
      page: () => WorkClass(),
    ),
    GetPage(
      name: AppRoutes.workDo,
      page: () => WorkDoClass(),
    ),
    GetPage(
      name: AppRoutes.whereLive,
      page: () => WhereLiveClass(),
    ),
    GetPage(
      name: AppRoutes.location,
      page: () => LocationClass(),
    ),
  ];
}
