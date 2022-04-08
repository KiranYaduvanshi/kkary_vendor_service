import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/loginController.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:kkary_vendors/utils/inpuFieldDecoration.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  LoginController controller = Get.find();
  int nextRoute = Get.arguments;

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blueLight,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                ImagePaths.logo,
                height: 80,
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
                padding: const EdgeInsets.only(top: 20),
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
                controller: controller.phoneEmailController,
                focusNode: controller.mobileFn,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                ],
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {},
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (String value) {
                  FocusScope.of(context).requestFocus(controller.passFn);
                },
                decoration: CustomeInputDecoration.formDecoration(
                    "eg - 9855*****4 ", "Phone*"),
              ).wFourFifth(context).py8(),
              Obx(
                () => TextFormField(
                  controller: controller.passwordController,
                  focusNode: controller.passFn,
                  inputFormatters: [FilteringTextInputFormatter.deny(' ')],
                  obscureText: controller.eye.value,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {},
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (String value) {},
                  decoration: InputDecoration(
                    suffixIcon: controller.eyeVisibility().onTap(() {
                      controller.eye.value = !controller.eye.value;
                    }),
                    fillColor: Colors.white,
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    disabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    hintText: "**********",
                    labelText: "Password",
                  ),
                ).wFourFifth(context).py8(),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: AppColors.orange,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  onPressed: () {
                    nextRoute == 1
                        ? Get.toNamed(AppRoutes.bottomNavigationMart)
                        : Get.toNamed(AppRoutes.partner);
                  },
                  child: AppStrings.login.text.lg
                      .color(AppColors.white)
                      .bold
                      .make()
                      .py12(),
                ),
              ).wFourFifth(context).py8(),
              Align(
                      alignment: Alignment.bottomRight,
                      child: AppStrings.forgotPassword.text.white
                          .align(TextAlign.left)
                          .size(14)
                          .underline
                          .make())
                  .wFourFifth(context)
                  .py(8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const DottedLine(
                    direction: Axis.horizontal,
                    lineLength: 100,
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
                    lineLength: 100,
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
                    AppStrings.facebook.text.size(16).black.make().p12(),
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
                    Image.asset(
                      ImagePaths.google,
                      width: 25,
                      height: 25,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    AppStrings.google.text.size(16).black.make().p12(),
                  ],
                ).wThreeForth(context),
              ).py(10),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.signUP);
                },
                child: RichText(
                  text: const TextSpan(
                    text: AppStrings.donthaveAccount,
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
      ),
    );
  }
}
