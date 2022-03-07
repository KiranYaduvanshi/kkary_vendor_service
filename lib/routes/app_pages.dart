import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/hours.dart';
import 'package:kkary_vendors/modules/services_vendor/views/Register/partner.dart';
import 'package:kkary_vendors/modules/services_vendor/work/work.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/utils/bindings/hours_binding.dart';

class AppPages {
  static const INITIAL = AppRoutes.hours;

  //  static const INITIAL = Routes.WELCOME_CUSTOMER_SCREEN;
  static final routes = [
    GetPage(
      name: AppRoutes.partner,
      page: () => const Partner(),
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
  ];
}
