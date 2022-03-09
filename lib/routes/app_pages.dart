import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/homeBinding.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/hours_binding.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/order_binding.dart';
import 'package:kkary_vendors/modules/services_vendor/views/Register/work_do.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/Register/loginScreen.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/Register/partner.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/Register/sign_up.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/hours.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/work/work.dart';
import 'package:kkary_vendors/modules/services_vendor/views/Register/work_do.dart';
import 'package:kkary_vendors/modules/services_vendor/views/location/location.dart';
import 'package:kkary_vendors/modules/services_vendor/views/orders.dart';
import 'package:kkary_vendors/modules/services_vendor/views/where_live/whereLive.dart';
import 'package:kkary_vendors/modules/services_vendor/views/work_do/wordDo.dart';
import 'package:kkary_vendors/modules/views/earning_page.dart';
import 'package:kkary_vendors/modules/views/home.dart';
import 'package:kkary_vendors/routes/app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.login;

  static final routes = [
    GetPage(
      name: AppRoutes.partner,
      page: () => const Partner(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.workDoRegister,
      page: () => WorkDo(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.hours,
      page: () => const HoursWidget(),
      binding: HoursBinding(),
    ),
    GetPage(
      name: AppRoutes
          .yourWork, //  static const INITIAL = Routes.WELCOME_CUSTOMER_SCREEN;
      page: () => WorkClass(),
    ),
    GetPage(
      name: AppRoutes.workDo,
      page: () => WorkDoClass(),
    ),
    GetPage(
      name: AppRoutes.whereLive,
      page: () => WhereLiveClass(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.location,
      page: () => LocationClass(),
    ),
    GetPage(
      name: AppRoutes.orders,
      page: () => Orders(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: AppRoutes.signUP,
      page: () => SignUpClass(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: AppRoutes.earnings,
      page: () => const EarningPage(),
    ),
  ];
}
