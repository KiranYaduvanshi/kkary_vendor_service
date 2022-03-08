import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/common_widgets/linear_progress_indicator.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/state_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';

class WorkDoClass extends StatelessWidget {
  var controller = Get.put(RadioController());
  var radioContoller = Get.find<RadioController>();

  int value1 = -1;
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
          "${AppStrings.aboutwork}".text.size(20).bold.make().px(10).py(8),
          Container(
            width: 80,
            height: 2,
            color: Colors.blue,
          ).px(10),
          CommonWidgets.search(title: "${AppStrings.workDoSearch}")
              .px(24)
              .py(10),
          "${AppStrings.categories}"
              .text
              .bold
              .color(AppColors.blueLight)
              .size(18)
              .make()
              .px(10)
              .py(10),
          SingleChildScrollView(
            child: Column(
              children: [
                for (int i = 0; i < radioContoller.workTitle.length; i++)
                  WorkDowidget(i, radioContoller.workTitle[i]).p(5)
              ],
            ),
          ).expand()
        ],
      ),
    );
  }

  Widget WorkDowidget(int index, String title) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)]),
                child: Image.asset(
                  ImagePaths.icCalendar,
                  height: 50.0,
                  width: 50.0,
                  fit: BoxFit.fitHeight,
                  color: Colors.amber,
                ),
              ).p(5),
              "${title}".text.make().px(10)
            ],
          ),
          Obx(
            () => Radio(
                value: index,
                groupValue: radioContoller.radioworkDo.value,
                onChanged: (int? value) {
                  radioContoller.radioworkDo.value = value!;
                  radioContoller.onSelectRadioOption(index);
                  Get.back();
                  print("value---- ${radioContoller.radioworkDo.value}");
                  print(
                      "value list item---- ${radioContoller.onSelectRadioOption}");
                }),
          ),
        ],
      ),
    );
  }
}
