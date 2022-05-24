import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/common_widgets/continue_button.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/order_ctl.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/earning_page.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_icons.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/decorations.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';

class Orders extends StatelessWidget {
  Orders({Key? key}) : super(key: key);

  OrderController _controller = Get.find();
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
          InkWell(
            onTap: () => Get.to(
               EarningPage(),
              transition: Transition.zoom,
              duration: const Duration(seconds: 3),
            ),
            child: AppIcons.notification.paddingOnly(right: 10),
          ),
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

  OrderController controller = Get.find();

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
                  // foregroundImage: AssetImage(AppImages.profileImage),
                  foregroundImage: AssetImage(ImagePaths.imgUser),
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
              for (var item in controller.servicesList) services(item).p4(),
            ],
          ).px8(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CustomButtons()
                  .button(text: "Decline", color: AppColors.blueExtraDark , fun:
              (){})
                  .w40(context),
              CustomButtons()
                  .button(text: "Accept", color: AppColors.blueLight , fun:()=> _controller.goto() )
                  .w40(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget services(String service) {
    return Container(
      decoration: CustomeBoxDecorations.circularInputField(
          borderColor: AppColors.blueLight),
      child: service.text.color(AppColors.blueLight).make().py4().px12(),
    );
  }
}
