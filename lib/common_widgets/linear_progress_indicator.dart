import 'package:flutter/material.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class ProgressIndecators {
  static Widget linearProgressIndicator(
      {required String text, required double value}) {
    return SizedBox(
      height: 30,
      child: Stack(
        children: [
          LinearProgressIndicator(
            minHeight: 35,
            value: value,
            backgroundColor: AppColors.blueDark,
            color: AppColors.blueMedium,
          ),
          Align(
            child: "  $text".text.lg.color(Colors.white).make(),
            alignment: Alignment.centerLeft,
          ).px8(),
        ],
      ),
    );
  }
}
