import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_home_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class MartHome extends StatelessWidget {
  const MartHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MartHomeController _controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.blueLight,
        title: "Home".text.make(),
        leading: const BackButton(color: Colors.white),
        actions: const [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.notifications_outlined)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: _controller.list.length,
            itemBuilder: (BuildContext ctx, index) {
              return menu(context, index);
            }),
      ),
    );
  }

  Widget menu(BuildContext context, int index) {
    MartHomeController _controller = Get.find();

    return Container(
      decoration: BoxDecoration(
        color: AppColors.blueUltraLight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Badge(
            badgeColor: Colors
                .primaries[Random().nextInt(Colors.primaries.length)].shade200,
            padding: const EdgeInsets.all(3),
            position: BadgePosition.topEnd(top: 4, end: -8),
            badgeContent: const Icon(
              Icons.arrow_upward,
              color: Colors.white,
              size: 13,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: "10".text.size(34).make().p12(),
            ),
          ),
          "Total ${_controller.list[index]}".text.bold.size(14).make(),
        ],
      ),
    );
  }
}
