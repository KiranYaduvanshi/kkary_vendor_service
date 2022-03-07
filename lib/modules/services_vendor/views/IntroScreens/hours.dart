import 'package:flutter/material.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/controllers/hours_controller.dart';
import 'package:kkary_vendors/utils/decorations.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class HoursWidget extends StatefulWidget {
  HoursWidget({Key? key}) : super(key: key);

  @override
  State<HoursWidget> createState() => _HoursWidgetState();
}

class _HoursWidgetState extends State<HoursWidget> {
  // bool hs4 = false;
  // bool hs6 = false;
  // bool hs8 = false;

  // int index = 0;

  var controller = Get.find<HoursController>();

  // String price = price[index];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * .75,
            height: MediaQuery.of(context).size.height * .55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1.0,
                  color: AppColors.blueLight,
                )),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .182,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .132,
                            child: Stack(
                              children: [
                                Image.asset(ImagePaths.bigStar).positioned(
                                    top: MediaQuery.of(context).size.height *
                                        .0202,
                                    left: MediaQuery.of(context).size.width *
                                        .432),
                                Image.asset(
                                  ImagePaths.rupeeSymbolPath,
                                  width: 40,
                                  height: 40,
                                ).centered(),
                                Image.asset(ImagePaths.smallStar).positioned(
                                    top: MediaQuery.of(context).size.height *
                                        .0652,
                                    left: MediaQuery.of(context).size.width *
                                        .252),
                              ],
                            ),
                          ),
                          "YOU CAN EARN UPTO"
                              .text
                              .semiBold
                              .color(AppColors.blueMedium)
                              .size(14)
                              .make(),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .182,
                  decoration:
                      CustomeBoxDecorations.circularBorderLinearGradient(),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .0592,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "₹".text.white.semiBold.size(14).make(),
                            "45,000".text.white.semiBold.size(34).make(),
                          ],
                        ),
                        "Per Month".text.white.semiBold.size(14).make(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .182,
                  child: Column(
                    children: [
                      SizedBox(
                              height: MediaQuery.of(context).size.height * .04,
                              child: Image.asset(ImagePaths.icCalendar))
                          .py4(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .04,
                        child: "You work every day for?"
                            .text
                            .semiBold
                            .color(AppColors.blueMedium)
                            .make(),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .75,
                        child: Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.manageState(controller.hs4);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: controller.hs4.value
                                        ? AppColors.blueMedium
                                        : AppColors.gray,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                  ),
                                  child: "4 Hrs"
                                      .text
                                      .semiBold
                                      .color(controller.hs4.value
                                          ? AppColors.white
                                          : AppColors.blueExtraLight)
                                      .make()
                                      .py4()
                                      .px8(),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.manageState(controller.hs6);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: controller.hs6.value
                                        ? AppColors.blueMedium
                                        : AppColors.gray,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                  ),
                                  child: "6 Hrs"
                                      .text
                                      .semiBold
                                      .color(controller.hs6.value
                                          ? AppColors.white
                                          : AppColors.blueExtraLight)
                                      .make()
                                      .py4()
                                      .px8(),
                                ).px8(),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.manageState(controller.hs8);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: controller.hs8.value
                                        ? AppColors.blueMedium
                                        : AppColors.gray,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                  ),
                                  child: "8 Hrs"
                                      .text
                                      .semiBold
                                      .color(controller.hs8.value
                                          ? AppColors.white
                                          : AppColors.blueExtraLight)
                                      .make()
                                      .py4()
                                      .px8(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).py8()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
