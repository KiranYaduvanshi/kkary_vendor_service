import 'package:flutter/material.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

Widget RadioCommonWidget(String title, int index, RxInt selectedVal) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 200, child: title.text.maxLines(2).make()),
          Obx(
            () => Radio(
                value: index,
                groupValue: selectedVal.value,
                onChanged: (int? value) {
                  selectedVal.value = value!;
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
