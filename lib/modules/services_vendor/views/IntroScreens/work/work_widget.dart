import 'package:flutter/material.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/state_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/decorations.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class WorkWidget extends StatelessWidget {
  var controller = Get.put(RadioController());
  var radioContoller = Get.find<RadioController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomeBoxDecorations.circularBorderLightBlue(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "How Many Years of Experience You Have"
              .text
              .color(AppColors.blueLight)
              .make(),
          for (int i = 0; i < 5; i++)
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "0-6 Month".text.make(),
                  Radio(
                      value: 1,
                      groupValue: radioContoller.radioExperience.value,
                      onChanged: (int? value) {})
                ],
              ),
            )
        ],
      ).p(10),
    );
  }
}
