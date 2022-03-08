import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/common_widgets/continue_button.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/order_ctl.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_icons.dart';
import 'package:kkary_vendors/utils/app_images.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/decorations.dart';
import 'package:velocity_x/velocity_x.dart';

class Orders extends StatelessWidget {
  Orders({Key? key}) : super(key: key);

  OrderController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: AppColors.blueLight,
        title: "Orders".text.make(),
        actions: [
          AppIcons.notification.paddingOnly(right: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            requestCard(context).py(4).px8(),
            requestCard(context).py(4).px8(),
            requestCard(context).py(4).px8(),
            requestCard(context).py(4).px8(),
          ],
        ).p4(),
      ),
    );
  }

  Widget requestCard(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.white,
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const CircleAvatar(
                backgroundColor: AppColors.blueLight,
                radius: 25,
                child: CircleAvatar(
                  foregroundImage: AssetImage(AppImages.profileImage),
                  backgroundColor: AppColors.blueLight,
                  radius: 24,
                ),
              ).py8(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: Get.width * .7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        "Nitish Kumar".text.black.make(),
                        "\$140/per/h"
                            .text
                            .bold
                            .color(AppColors.blueLight)
                            .make(),
                      ],
                    ),
                  ),
                  "#5677 | 11:30AM".text.color(AppColors.grayDark).make().py(6),
                ],
              ),
            ],
          ),
          Container(
            height: .5,
            color: AppColors.blueLight,
          ),
          const Text(AppStrings.orderServiceProvide).p12(),
          Wrap(
            children: [
              for (var item in controller.servicesList) servicer(item).p4(),
            ],
          ).px8(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CustomeButtons()
                  .button(text: "Decline", color: AppColors.blueExtraDark)
                  .w40(context),
              CustomeButtons()
                  .button(text: "Accept", color: AppColors.blueLight)
                  .w40(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget servicer(String service) {
    return Container(
      decoration: CustomeBoxDecorations.circularInputField(
          borderColor: AppColors.blueLight),
      child: service.text.color(AppColors.blueLight).make().py4().px12(),
    );
  }
}
