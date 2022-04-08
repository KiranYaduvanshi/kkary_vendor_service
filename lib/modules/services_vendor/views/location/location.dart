import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/common_widgets/linear_progress_indicator.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/location_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/partner_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/state_controller.dart';
import 'package:kkary_vendors/modules/services_vendor/views/where_live/whereLiveWidget.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';

class LocationClass extends StatelessWidget {
  var controller = Get.put(PartnerController());
  var locationController = Get.find<LocationController>();
  // var radioContoller = Get.find<RadioController>();

  LocationClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          CommonWidgets.linearProgressIndicator(text: "Last Step!", value: 0.35)
              .py(16),
          AppStrings.location.text.size(20).bold.make().px(10).py(8),
          Container(
            width: 80,
            height: 2,
            color: Colors.blue,
          ).px(10),
          CommonWidgets.search(title: AppStrings.serachLocation).px(24).py(10),
          SingleChildScrollView(
            child: Column(
              children: [
                for (int i = 0; i < 4; i++)
                  WorkDowidget(i, controller.locationTiles[i]),
                // RadioCommonWidget(
                //     "Lajpat nagar Metro Station ,lal lajpat Rai Road ,Lajpat Nagar Gurgaon",
                //     i,
                //     radioContoller.radioExperience)
              ],
            ),
          ).expand()
        ],
      ),
    );
  }

  Widget WorkDowidget(int index, String title) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 200, child: title.text.maxLines(2).make()),
            Obx(
              () => Radio(
                  value: index,
                  groupValue: controller.radiolocation.value,
                  onChanged: (int? value) {
                    controller.radiolocation.value = value!;
                    locationController.onSelectRadioOption(index);
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
    // Container(
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Row(
    //         children: [
    //           Container(
    //             height: 50,
    //             width: 50,
    //             decoration: const BoxDecoration(
    //                 color: Colors.white,
    //                 shape: BoxShape.rectangle,
    //                 borderRadius: BorderRadius.only(
    //                   topLeft: Radius.circular(10.0),
    //                   bottomRight: Radius.circular(10.0),
    //                   topRight: Radius.circular(10.0),
    //                   bottomLeft: Radius.circular(10.0),
    //                 ),
    //                 boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)]),
    //             child: Image.asset(
    //               ImagePaths.icCalendar,
    //               height: 50.0,
    //               width: 50.0,
    //               fit: BoxFit.fitHeight,
    //               color: Colors.amber,
    //             ),
    //           ).p(5),
    //           "${title}".text.make().px(10)
    //         ],
    //       ),
    //       Obx(
    //         () => Radio(
    //             value: index,
    //             groupValue: controller.radiolocation.value,
    //             onChanged: (int? value) {
    //               controller.radiolocation.value = value!;
    //               locationController.onSelectRadioOption(index);
    //             }),
    //       ),
    //     ],
    //   ),
    // );
  }
}
