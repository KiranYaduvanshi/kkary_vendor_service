import 'package:flutter/material.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/decorations.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';

class HoursWidget extends StatefulWidget {
  const HoursWidget({Key? key}) : super(key: key);

  @override
  State<HoursWidget> createState() => _HoursWidgetState();
}

class _HoursWidgetState extends State<HoursWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * .75,
            height: MediaQuery.of(context).size.height * .55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1.0,
                  color: AppColors.blueLight,
                )),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .182,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .12,
                      ),
                      "YOU CAN EARN UPTO"
                          .text
                          .semiBold
                          .color(AppColors.blueDark)
                          .size(15)
                          .make()
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .182,
                  decoration:
                      CustomeBoxDecorations.circularBorderLinearGradient(),
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "₹".text.white.semiBold.size(14).make(),
                            "45,000".text.white.semiBold.size(34).make(),
                          ],
                        ),
                        "Per Month".text.white.semiBold.size(14).make(),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .182,
                  child: Column(
                    children: [
                      Image.asset(ImagePaths.icCalendar),
                      "You work every day for?"
                          .text
                          .color(AppColors.blueDark)
                          .make(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
