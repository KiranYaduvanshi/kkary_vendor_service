import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/binding/mart_earnings_bindings.dart';
import 'package:kkary_vendors/modules/mart_vendor/binding/mart_order_detail_binding.dart';
import 'package:kkary_vendors/modules/mart_vendor/binding/mart_order_status_binding.dart';
import 'package:kkary_vendors/modules/mart_vendor/binding/mart_product_details_binding.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/mart_order_detail.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/profile_details.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/test.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/loginBinding.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/mart_your_work.dart';
import 'package:kkary_vendors/modules/mart_vendor/binding/mart_addProduct_binding.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/mart_add_product.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/mart_order_status.dart';
import 'package:kkary_vendors/modules/mart_vendor/binding/mart_all_product_binding.dart';
import 'package:kkary_vendors/modules/mart_vendor/binding/mart_bottom_navigation-binding.dart';
import 'package:kkary_vendors/modules/mart_vendor/binding/mart_home_binding.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/mart_bottom_navigation.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/mart_home.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/homeBinding.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/hours_binding.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/order_binding.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/otp_binding.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/partnet_binding.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/profile_binding.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/rating_binding.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/service_status-binding.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/vendor_bottom_navigation-binding.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/vendor_home_binding.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/loginController.dart';
import 'package:kkary_vendors/modules/services_vendor/binding/product_detail_binding.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/Register/loginScreen.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/Register/partner.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/Register/sign_up.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/hours.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/work/work.dart';
import 'package:kkary_vendors/modules/services_vendor/views/Register/work_do.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/mart_all_product.dart';
import 'package:kkary_vendors/modules/services_vendor/views/driver_home.dart';
import 'package:kkary_vendors/modules/services_vendor/views/location/location.dart';
import 'package:kkary_vendors/modules/services_vendor/views/orders.dart';
import 'package:kkary_vendors/modules/services_vendor/views/otp.dart';
import 'package:kkary_vendors/modules/services_vendor/views/rating.dart';
import 'package:kkary_vendors/modules/services_vendor/views/service_status.dart';
import 'package:kkary_vendors/modules/services_vendor/views/product_detail.dart';
import 'package:kkary_vendors/modules/services_vendor/views/vendor_bottom_navigation.dart';
import 'package:kkary_vendors/modules/services_vendor/views/vendor_home.dart';
import 'package:kkary_vendors/modules/services_vendor/views/vendor_services_status.dart';
import 'package:kkary_vendors/modules/services_vendor/views/where_live/whereLive.dart';
import 'package:kkary_vendors/modules/services_vendor/views/work_do/wordDo.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/earning_page.dart';
import 'package:kkary_vendors/modules/views/forgot_password.dart';
import 'package:kkary_vendors/modules/views/home.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/profile_screen.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/routes/ui_demo.dart';

class AppPages {
  static const homeRoute = AppRoutes.home;

  static final routes = [
    GetPage(
      name: "/homeDriver",
      page: () => const DriverHome(),
    ),
    GetPage(
      name: AppRoutes.partner,
      page: () => const Partner(),
      binding: PartnerBinding(),
    ),
    GetPage(
      name: AppRoutes.test,
      page: () => const Test(),
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
      binding: WorkClassBinding(),
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
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.forgotPassword,
      page: () => ForgotPassword(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: MartHomeBinding(),
    ),
    GetPage(
      name: AppRoutes.earnings,
      page: () => EarningPage(),
      binding: MartEarningBinding(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => ProfileScreen(),
      // binding: ProfileBinding()
    ),
    GetPage(
        name: AppRoutes.profileinfo,
        page: () => ProfileInfo(),
        binding: ProfileBinding()),
    // GetPage(
    //   name: AppRoutes.serviceStatus,
    //   page: () => ServiceStatus(),
    //   binding: ServiceStatusBinding(),
    // ),
    GetPage(
      name: AppRoutes.serviceStatus,
      page: () => VendorServiceStatus(),
      binding: ServiceStatusBinding(),
    ),
    GetPage(
      name: AppRoutes.rating,
      page: () => Rating(),
      binding: RatingBinding(),
    ),

    //Mart
    GetPage(
      name: AppRoutes.orderDetailsMart,
      page: () =>  MartOrderStatus(),
      binding: MartOrderStatusBinding(),
    ),
    GetPage(
      name: AppRoutes.homeMart,
      page: () => const MartHome(),
      binding: MartHomeBinding(),
    ),
    GetPage(
      name: AppRoutes.vendorHome,
      page: () => const VendorHome(),
      binding: VendorHomeBinding(),
    ),
    GetPage(
      name: AppRoutes.bottomNavigationMart,
      page: () => const MartBottomNavigation(),
      binding: MartBottomNavigationBinding(),
    ),
    GetPage(
      name: AppRoutes.vendorBottomNavigationMart,
      page: () => const VendorBottomNavigation(),
      binding: VendorBottomNavigationBinding(),
    ),
    GetPage(
      name: AppRoutes.allProductsMart,
      page: () => MartAllProductscreen(),
      binding: MartAllProductBinding(),
    ),

    GetPage(
      name: AppRoutes.martAddProduct,
      page: () => MartAddProduct(),
      binding: MartProductDetailsBinding(),
    ),
    GetPage(
      name: AppRoutes.otp,
      page: () => Otp(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: AppRoutes.martOrderDetails,
      page: () => MartOrderDetail(),
      binding: MartOrderDetailBinding(),
    ),

    GetPage(
      name: AppRoutes.productDetails,
      page: () => ProductDetailScreen(),
    ),
    GetPage(
      name: AppRoutes.uiDemo,
      page: () => DemoUi(),
    ),
  ];
}
