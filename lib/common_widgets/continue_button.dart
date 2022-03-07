import 'package:flutter/material.dart';
import 'package:kkary_vendors/utils/app_colors.dart';

import 'package:velocity_x/velocity_x.dart';

class CustomeButtons {
  Widget continueButton() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
          boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey)]),
      child: ElevatedButton(
        onPressed: () {},
        child: "Continue".text.make().px(10).py(10),
        style: ElevatedButton.styleFrom(
          primary: AppColors.blueDark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 15.0,
        ),
      ).p20(),
    );
  }
}
