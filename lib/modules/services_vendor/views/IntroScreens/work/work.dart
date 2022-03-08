import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/common_widgets/linear_progress_indicator.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/state_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/views/IntroScreens/work/select.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class WorkClass extends StatelessWidget {
  var controller = Get.put(RadioController());
  var radioContoller = Get.find<RadioController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonoWidgets.linearProgressIndicator(
                    text: "Almost Done!", value: 0.35)
                .py(16),
            "Tell us about your work".text.size(20).bold.make().px(10).py(8),
            Container(
              width: 80,
              height: 2,
              color: Colors.blue,
            ).px(10),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < radioContoller.title.length; i++)
                    // WorkWidget().p(10),
                    radioGroup(
                            radioList: radioContoller.radiodDataList,
                            title: radioContoller.title[i],
                            selectedVal: radioContoller.radioExperience,
                            index: i)
                        .p(10)
                ],
              ),
            ).expand(),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
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
              ).py(10).px(18),
            )
          ],
        ),
      ),
    );
  }
}
