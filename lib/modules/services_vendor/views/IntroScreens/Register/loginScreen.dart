import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:kkary_vendors/utils/inpuFieldDecoration.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:dotted_line/dotted_line.dart';

class LoginScreen extends StatelessWidget {
  FocusNode mobileFn = new FocusNode();
  FocusNode passFn = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueLight,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Image.asset(ImagePaths.logo)),
            ),
            Center(
              child: "Vendors App"
                  .text
                  .bold
                  .white
                  .size(20)
                  .align(TextAlign.center)
                  .make()
                  .py(8),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: "Login with Email ID/Mobile"
                      .text
                      .white
                      .align(TextAlign.left)
                      .size(14)
                      .make()),
            ).wFourFifth(context).py(8),
            TextFormField(
              focusNode: mobileFn,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]')),
              ],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {},
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (String value) {
                FocusScope.of(context).requestFocus(passFn);
              },
              decoration: CustomeInputDecoration.formDecoration(
                  "eg - 9855548154 ", "Phone*"),
            ).wFourFifth(context).py8(),
            TextFormField(
              focusNode: passFn,
              inputFormatters: [FilteringTextInputFormatter.deny(' ')],
              obscureText: true,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {},
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (String value) {},
              decoration: CustomeInputDecoration.formDecoration(
                  "**********", "Password"),
            ).wFourFifth(context).py8(),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: AppColors.orange,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    )),
                onPressed: () {},
                child: "${AppStrings.login}"
                    .text
                    .lg
                    .color(AppColors.white)
                    .bold
                    .make()
                    .py12(),
              ),
            ).wFourFifth(context).py8(),
            Container(
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: "${AppStrings.forgotPassword}"
                      .text
                      .white
                      .align(TextAlign.left)
                      .size(14)
                      .underline
                      .make()),
            ).wFourFifth(context).py(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const DottedLine(
                  direction: Axis.horizontal,
                  lineLength: 120,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.white,
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                "OR".text.white.make(),
                const DottedLine(
                  direction: Axis.horizontal,
                  lineLength: 120,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.white,
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              ],
            ).wFourFifth(context).py(8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AppColors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.facebook,
                    size: 30,
                    color: AppColors.blueLight,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  "${AppStrings.facebook}".text.lg.black.make().p12(),
                ],
              ).wThreeForth(context),
            ).py(10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AppColors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImagePaths.google,
                      height: 30, width: 30, fit: BoxFit.fill),
                  // const Icon(
                  //   Icons.,
                  //   size: 30,
                  //   color: AppColors.blueMedium,
                  // ),
                  const SizedBox(
                    width: 10,
                  ),
                  "${AppStrings.google}".text.lg.black.make().p12(),
                ],
              ).wThreeForth(context),
            ).py(10),
            InkWell(
              onTap: () {},
              child: RichText(
                text: const TextSpan(
                  text: '${AppStrings.donthaveAccount}',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' ${AppStrings.signUp}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white)),
                  ],
                ),
              ).py(10),
            )
          ],
        ),
      ),
    );
  }
}
