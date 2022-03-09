import 'package:get/get.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:kkary_vendors/common_widgets/linear_progress_indicator.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/image_paths.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blueLight,
        body: SingleChildScrollView(
          child: Column(
            children: [
            const SizedBox(
            height: 40,
          ),
          Image.asset(
            ImagePaths.logo,
            height: 80,
          ),
          Center(
            child: "Vendors App"
                .text
                .bold
                .white
                .size(20)
                .align(TextAlign.center)
                .make()
                .py(8),
          ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                ImagePaths.imgMainFrame,
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width * .9,
              ).centered(),
              Image.asset(ImagePaths.imgCloud, fit: BoxFit.fitHeight),
              Container(
                color: AppColors.white,
                child: Container(
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width * 1,
                  color: Colors.white,
                  child: Column(
                    children: [
                      CommonWidgets().commonButton(
                          ctx: context,
                          action: () {
                            Get.toNamed(AppRoutes.login);
                          },
                          title: "Log In",
                          bgColor: AppColors.blueLight,
                          strokeColor: Colors.grey),
                      const SizedBox(
                        height: 10,
                      ),
                      CommonWidgets().commonButton(
                          action: () => Get.toNamed(AppRoutes.signUP),
                          ctx: context,
                          strokeColor: AppColors.black,
                          textColor: AppColors.black,
                          bgColor: AppColors.white,
                          title: "New to Kkary? Sign up!"),
                    ],
                  ),
                ).py(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
