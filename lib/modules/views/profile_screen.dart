import 'package:flutter/material.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
                            "Aman Garg"
                                .text
                                .fontWeight(FontWeight.w500)
                                .size(17)
                                .make(),
                            const Icon(
                              Icons.edit,
                              color: AppColors.blueLight,
                              size: 16,
                            ).px(4),
                          ],
                        ),
                      ),
                      "aman.garg@gmail.com"
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
          const Divider(
            thickness: 0.5,
          ),
          Row(
            children: [
              Image.asset(
                ImagePaths.myOrders,
                color: AppColors.blueLight,
              ),
              const SizedBox(
                width: 20,
              ),
              "Orders".text.semiBold.size(18).make(),
            ],
          ).px(26).py(5),
          const Divider(
            thickness: 0.5,
          ),
          Row(
            children: [
              Image.asset(ImagePaths.myDetails),
              const SizedBox(
                width: 20,
              ),
              "My Details".text.semiBold.size(18).make(),
            ],
          ).px(26).py(5),
          const Divider(
            thickness: 0.5,
          ),
          Row(
            children: [
              Image.asset(ImagePaths.notifications),
              const SizedBox(
                width: 20,
              ),
              "Notifications".text.semiBold.size(18).make(),
            ],
          ).px(26).py(5),
          const Divider(
            thickness: 0.5,
          ),
          Row(
            children: [
              Image.asset(ImagePaths.logout),
              const SizedBox(
                width: 20,
              ),
              "Logout".text.semiBold.size(18).make(),
            ],
          ).px(26).py(5),
        ],
      ),
    );
  }
}
