import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_home_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_icons.dart';
import 'package:velocity_x/velocity_x.dart';

class MartHome extends StatelessWidget {
  const MartHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MartHomeController _controller = Get.find();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.blueLight,
        title: "Home".text.make(),
        leading: const BackButton(color: Colors.white),
        actions: const [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppIcons.notification),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:
        Obx(
            ()=>_controller.fetch.value ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: _controller.list.length,
              itemBuilder: (BuildContext ctx, index) {
                return menu(context, index);
              }):Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  Widget menu(BuildContext context, int index) {
    MartHomeController _controller = Get.find();

    return InkWell(
      onTap: () {
        _controller.goToPage(_controller.list[index]);
      },
      child: Container(

        decoration: BoxDecoration(
          color: AppColors.blueUltraLight,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Badge(
              badgeColor: _controller.color[index],
              padding: const EdgeInsets.all(3),
              position: BadgePosition.topEnd(top: 4, end: -8),
              toAnimate: true,
              animationDuration: Duration(milliseconds: 3000),
              animationType: BadgeAnimationType.slide,
              badgeContent: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
                size: 13,
              ),
              child: Container(
                height: 60,
                width: 60,

                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: "${_controller.count(_controller.list[index])??0}".text.size(32).make().p12(),
              ),
            ),
            "Total ${_controller.list[index]}".text.bold.size(12).make(),
          ],
        ),
      ),
    );
  }
}
