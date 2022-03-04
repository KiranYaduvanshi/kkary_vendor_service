import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/hours.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/partner.dart';
import 'package:kkary_vendors/routes/app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.hours;

  //  static const INITIAL = Routes.WELCOME_CUSTOMER_SCREEN;
  static final routes = [
    GetPage(
      name: AppRoutes.PARTNER,
      page: () => const Partner(),
    ),
    GetPage(
      name: AppRoutes.hours,
      page: () => const HoursWidget(),
    )
  ];
}
