
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/loginController.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/src/flutter/padding.dart';



class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
 LoginController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: "Forget Password".text.make(),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: Form(
        key: controller.fformKey,
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              alignment: Alignment.center,
              child:const Icon(Icons.password , color: AppColors.blueLight,size: 120,),
            ),
            const SizedBox(height: 30,),
            "Please Provide your account email for which you \nwant to reset your password"
                .text
                .coolGray400
                .size(15)
                .align(TextAlign.center)
                .make()
                .py12(),
            TextFormField(
              cursorColor: Colors.black,
              inputFormatters: [FilteringTextInputFormatter.deny(' ')],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                hintText: "Email Address",
                labelText: "Email Address",
              ),
              validator: (value) => controller.handleEmail(),
            ).px(24).py(8),
            InkWell(
              onTap: () {
                controller.userVerificationForgot();
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .87,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                alignment: Alignment.center,
                child: "NEXT".text.semiBold.size(15).white.make().py12(),
              ).py(8),
            ),
          ],
        ),
      ),
    );
  }
}
