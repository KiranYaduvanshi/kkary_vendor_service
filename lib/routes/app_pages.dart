import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/views/Register/partner.dart';
import 'package:kkary_vendors/routes/app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.PARTNER;

  //  static const INITIAL = Routes.WELCOME_CUSTOMER_SCREEN;
  static final routes = [
    GetPage(
      name: AppRoutes.PARTNER,
      page: () => const Partner(),
    ),
  ];
}
