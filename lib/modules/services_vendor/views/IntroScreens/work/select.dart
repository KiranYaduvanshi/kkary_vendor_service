import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/mart_your_work_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/registerController.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/where_live_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/decorations.dart';
import 'package:velocity_x/velocity_x.dart';

Widget radioGroup({
  required List<dynamic> radioList,
  required String title,
  required int index,
  required RxInt selectedVal,
  required Function select,
}) {
  GetxController controller = Get.find<WorkClassController>();
  GetxController whereLiveController = Get.find<WhereLiveController>();

  return Container(
    decoration: CustomeBoxDecorations.circularBorderLightBlue(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "${title}".text.color(AppColors.blueLight).semiBold.make().py(8).px(10),
        for (int i = 0; i < radioList[index].length; i++)
          Column(
            children: [
              Container(
                width: double.infinity,
                height: .5,
                color: AppColors.blueExtraLight,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "${radioList[index][i]}".text.make(),
                  Obx(
                    () => Radio(
                        value: i,
                        groupValue: selectedVal.value,
                        onChanged: (int? value) {
                          selectedVal.value = value!;
                          select(index);
                          print(
                              "index ----${selectedVal.value}  --- title--- ${radioList[index][i]}");
                        }),
                  ),
                ],
              ).px(10),
            ],
          ),
      ],
    ),
  );
}
