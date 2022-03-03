import 'package:flutter/material.dart';
import 'package:kkary_vendors/utils/app_colors.dart';

class BoxDecorations {
  static BoxDecoration circularBorderLightBlue() {
    return BoxDecoration(
      border: Border.all(color: AppColors.blueLight),
      borderRadius: const BorderRadius.all(Radius.circular(15.0)),
    );
  }

  static BoxDecoration circularInputField({ Color borderColor = Colors.black}) {
    return  BoxDecoration(
      border: Border.all(color: borderColor),
      borderRadius: const BorderRadius.all(Radius.circular(25)),
    );
  }

}
