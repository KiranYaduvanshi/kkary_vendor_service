import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:kkary_vendors/common_widgets/linear_progress_indicator.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/image_paths.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blueLight,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                ImagePaths.imgMainFrame,
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width * .9,
              ),
              Image.asset(ImagePaths.imgCloud, fit: BoxFit.fitHeight),
              Container(
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width * 1,
                color: Colors.white,
                child: Column(
                  children: [
                    CommonWidgets().commonButton(
                        ctx: context,
                        action: () {},
                        title: "Log In",
                        bgColor: AppColors.blueLight,
                        strokeColor: Colors.grey),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonWidgets().commonButton(
                        action: () => print("kn"),
                        ctx: context,
                        strokeColor: AppColors.black,
                        textColor: AppColors.black,
                        bgColor: AppColors.white,
                        title: "New to Kkary? Sign up!"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
