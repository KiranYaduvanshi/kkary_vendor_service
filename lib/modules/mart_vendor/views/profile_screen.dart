import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_profile_screen_controller.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  MartProfileScreenController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Profile".text.make(),
        centerTitle: true,
        backgroundColor: AppColors.blueLight,
        // leading: const Icon(Icons.arrow_back),
        actions: [
          const Icon(Icons.notifications_none_outlined).px(10),
        ],
      ),
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.blueLight,
                    radius: 30,
                    child: CircleAvatar(
                      // foregroundImage: AssetImage(AppImages.profileImage),
                      foregroundImage: AssetImage(ImagePaths.imgUser),
                      backgroundColor: AppColors.blueLight,
                      radius: 28,
                    ),
                  ).py(10).px(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            "${_controller.name}"
                                .text
                                .fontWeight(FontWeight.w500)
                                .size(17)
                                .make(),
                            InkWell(
                              onTap: () {
                                Get.toNamed(AppRoutes.profileinfo);
                              },
                              child: const Icon(
                                Icons.edit,
                                color: AppColors.blueLight,
                                size: 16,
                              ).px(4),
                            ),
                          ],
                        ),
                      ),
                      "${_controller.email}"
                          .text
                          .color(AppColors.grayDark)
                          .make()
                          .py(4),
                    ],
                  )
                ],
              ).p(26),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Divider(
              thickness: 1,
            ),
          ),
          Row(
            children: [
              Image.asset(
                ImagePaths.myOrders,
                color: AppColors.blueLight,
                width: 20,
              ),
              const SizedBox(
                width: 20,
              ),
              "Orders".text.size(18).make(),
            ],
          ).px(26).py(5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Divider(
              thickness: 1,
            ),
          ),
          Row(
            children: [
              Image.asset(
                ImagePaths.myDetails,
                width: 20,
              ),
              const SizedBox(
                width: 20,
              ),
              "My Details".text.size(18).make(),
            ],
          ).px(26).py(5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Divider(
              thickness: 1,
            ),
          ),
          Row(
            children: [
              Image.asset(
                ImagePaths.notifications,
                width: 20,
              ),
              const SizedBox(
                width: 20,
              ),
              "Notifications".text.size(18).make(),
            ],
          ).px(26).py(5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Divider(
              thickness: 1,
            ),
          ),
          Row(
            children: [
              Image.asset(
                ImagePaths.logout,
                width: 20,
              ),
              const SizedBox(
                width: 20,
              ),
              "Logout".text.size(18).make(),
            ],
          ).px(26).py(5),
        ],
      ),
    );
  }
}
