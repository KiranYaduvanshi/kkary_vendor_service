import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kkary_vendors/modules/views/profile_screen.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class EarningPage extends StatelessWidget {
  const EarningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String totalEarning = "1,200";
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: "Earning".text.make(),
        centerTitle: true,
        backgroundColor: AppColors.blueLight,
        // leading: const Icon(Icons.arrow_back),
        actions: [const Icon(Icons.notifications_none_outlined).px(10)],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  "Today's Earning  ".text.semiBold.black.make(),
                  "Rs $totalEarning"
                      .text
                      .semiBold
                      .color(AppColors.blueLight)
                      .make(),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border.all(
                    width: 1.0,
                    color: AppColors.blueLight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.calendar,
                      color: AppColors.blueLight,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    "January".text.size(15).black.make(),
                  ],
                ).px(6).py(2),
              )
            ],
          ).py8().px(8),
          SingleChildScrollView(
            child: Column(
              children: [
                for (int i = 0; i < 10; i++)
                  items(
                    context: context,
                    image: ImagePaths.imgUser,
                    amount: "157",
                    name: "Nitish Kumar",
                    hashTag: "#5625",
                    onTapAction: () {
                      Get.to(const ProfileScreen());
                    },
                  )
              ],
            ),
          ).expand(),
        ],
      ),
    );
  }

  Widget items({
    required BuildContext context,
    required String image,
    required String amount,
    required String name,
    required String hashTag,
    required Function onTapAction,
  }) {
    return InkWell(
      onTap: () => onTapAction(),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .93,
          child: Row(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.blueLight,
                    radius: 25,
                    child: CircleAvatar(
                      // foregroundImage: AssetImage(AppImages.profileImage),
                      foregroundImage: AssetImage(ImagePaths.imgUser),
                      backgroundColor: AppColors.blueLight,
                      radius: 24,
                    ),
                  ).py(10).px(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Get.width * .7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            name.text.fontWeight(FontWeight.w500).make(),
                            Row(
                              children: [
                                "\$$amount"
                                    .text
                                    .semiBold
                                    .color(AppColors.blueLight)
                                    .make(),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  CupertinoIcons.arrow_down_circle_fill,
                                  color: AppColors.blueLight,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      hashTag.text.color(AppColors.grayDark).make().py(4),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
