import 'package:flutter/material.dart';
import 'package:kkary_vendors/utils/app_colors.dart';

class CustomeBoxDecorations {
  static BoxDecoration circularBorderLightBlue() {
    return BoxDecoration(
      border: Border.all(color: AppColors.blueLight),
      borderRadius: const BorderRadius.all(Radius.circular(15.0)),
    );
  }

  static BoxDecoration circularInputField({Color borderColor = Colors.black}) {
    return BoxDecoration(
      border: Border.all(color: borderColor),
      borderRadius: const BorderRadius.all(Radius.circular(25)),
    );
  }

  static BoxDecoration circularBorderLinearGradient() {
    return const BoxDecoration(
      gradient: LinearGradient(
          colors: [AppColors.blueDark, AppColors.blueExtraLight],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
    );
  }
}
