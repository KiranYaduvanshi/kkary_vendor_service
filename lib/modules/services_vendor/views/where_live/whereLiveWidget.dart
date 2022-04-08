import 'package:flutter/material.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/location_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/partner_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/where_live_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

Widget RadioCommonWidget(String title, int index) {
  WhereLiveController controller = Get.find();
  PartnerController partnerController = Get.find();
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 200, child: title.text.maxLines(2).make()),
          Obx(
            () => Radio(
                value: index,
                groupValue: partnerController.radiocity.value,
                onChanged: (int? value) {
                  partnerController.radiocity.value = value!;
                  controller.onSelectRadioOption(index);
                }),
          ),
        ],
      ).px(10).py(8),
      Container(
        width: double.infinity,
        height: .5,
        color: AppColors.blueExtraLight,
      ),
    ],
  );
}
