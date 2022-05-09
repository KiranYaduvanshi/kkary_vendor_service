import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/service_status_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/decorations.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/velocity_x.dart';

class ServiceStatus extends StatelessWidget {
  ServiceStatus({Key? key}) : super(key: key);
  ServiceStatusController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          title: "Service Status".text.make(),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(0, 2),
                    blurRadius: 3)
              ]),
              child: Padding(
                  padding: const EdgeInsets.all(12.0), child: tabSelector()),
            ),
            serviceCard(1),
            serviceCard(2),
          ],
        ));
  }

  Widget buttonTabs(
      {required String title, required Color textColor, required Color back}) {
    return Container(
      width: Get.width * .29,
      decoration: CustomeBoxDecorations.circularInputField(
          borderColor: back, backColor: back, border: 8),
      child: Center(child: title.text.color(textColor).make().p(8)),
    );
  }

  Widget tabSelector() {
    return Obx(
      () => Container(
        decoration: CustomeBoxDecorations.circularInputField(
            borderColor: Colors.grey.shade200,
            backColor: Colors.grey.shade200,
            border: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                controller.selectedTab.value = 0;
              },
              child: buttonTabs(
                title: "Active",
                textColor: controller.selectedTab.value == 0
                    ? Colors.white
                    : Colors.black,
                back: controller.selectedTab.value == 0
                    ? AppColors.blueExtraDark
                    : Colors.grey.shade200,
              ).py(6),
            ),
            InkWell(
              onTap: () {
                controller.selectedTab.value = 1;
              },
              child: buttonTabs(
                      title: "Sucess",
                      textColor: controller.selectedTab.value == 1
                          ? Colors.white
                          : Colors.black,
                      back: controller.selectedTab.value == 1
                          ? AppColors.blueExtraDark
                          : Colors.grey.shade200)
                  .py(6),
            ),
            InkWell(
              onTap: () {
                controller.selectedTab.value = 2;
              },
              child: buttonTabs(
                      title: "Canceled",
                      textColor: controller.selectedTab.value == 2
                          ? Colors.white
                          : Colors.black,
                      back: controller.selectedTab.value == 2
                          ? AppColors.blueExtraDark
                          : Colors.grey.shade200)
                  .py(6),
            ),
          ],
        ),
      ),
    );
  }

  Widget serviceCard(int a) {
    return Container(
      width: Get.width * 1,
      decoration: CustomeBoxDecorations.circularInputField(
          border: 8, borderColor: Colors.grey.shade300),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "#5768404"
                      .text
                      .bold
                      .size(16)
                      .color(AppColors.blueNavy)
                      .make(),
                  "Home Service".text.size(18).bold.make().py4(),
                  "22 Sep 21,03:00 - 04:30"
                      .text
                      .size(8)
                      .color(Colors.grey.shade500)
                      .make(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: CustomeBoxDecorations.circularInputField(
                        backColor: a == 1
                            ? AppColors.blueNavyLight
                            : AppColors.greenLight,
                        borderColor: a == 1
                            ? AppColors.blueNavyLight
                            : AppColors.greenLight),
                    child: a == 1
                        ? "Accepted"
                            .text
                            .bold
                            .color(AppColors.blueNavy)
                            .size(12)
                            .make()
                            .py4()
                            .px(8)
                        : "Submitted"
                            .text
                            .bold
                            .color(AppColors.greenDark)
                            .size(12)
                            .make()
                            .py4()
                            .px(8),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  "\$135".text.bold.make().px8(),
                ],
              ),
            ],
          ).p(6),
          a == 1
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Levis".text.size(18).bold.make(),
                            Row(
                              children: [
                                "4.55".text.make(),
                                VxRating(
                                  isSelectable: false,
                                  maxRating: 5,
                                  value: 4.55,
                                  normalColor: Colors.grey,
                                  selectionColor: AppColors.gold,
                                  onRatingUpdate: (_) {},
                                ),
                                "156 Rating".text.make(),
                              ],
                            ).py4(),
                          ],
                        ),
                        const CircleAvatar(
                          radius: 22,
                          backgroundImage: AssetImage(ImagePaths.imgUser),
                        ),
                      ],
                    ).p(6),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: Get.width * .8,
                        alignment: Alignment.center,
                        decoration: CustomeBoxDecorations.circularInputField(
                          borderColor: AppColors.red,
                        ),
                        child: "Cancel"
                            .text
                            .size(18)
                            .color(Colors.red)
                            .make()
                            .p(6),
                      ),
                    ),
                  ],
                ).py8(),
        ],
      ).p(6),
    );
  }
}
