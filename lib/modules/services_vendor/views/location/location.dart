import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/common_widgets/linear_progress_indicator.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/state_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/views/where_live/whereLiveWidget.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/velocity_x.dart';

class LocationClass extends StatelessWidget {
  var controller = Get.put(RadioController());
  var radioContoller = Get.find<RadioController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProgressIndecators.linearProgressIndicator(
                  text: "Last Step!", value: 0.35)
              .py(16),
          "${AppStrings.location}".text.size(20).bold.make().px(10).py(8),
          Container(
            width: 80,
            height: 2,
            color: Colors.blue,
          ).px(10),
          SingleChildScrollView(
            child: Column(
              children: [
                for (int i = 0; i < 5; i++)
                  RadioCommonWidget(
                      "Lajpat nagar Metro Station ,lal lajpat Rai Road ,Lajpat Nagar Gurgaon",
                      i,
                      radioContoller.radioExperience)
              ],
            ),
          ).expand()
        ],
      ),
    );
  }
}
