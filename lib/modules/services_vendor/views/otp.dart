import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/otp_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/src/flutter/sizedbox.dart';
import 'package:velocity_x/src/flutter/widgets.dart';

class Otp extends StatelessWidget {
  Otp({Key? key}) : super(key: key);

  OtpController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(color: AppColors.blueLight, width: 2),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: "Enter Job".text.size(22).semiBold.make(),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: " Code".text.size(22).semiBold.make(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                "Ask customer for this code".text.coolGray400.make(),
                const SizedBox(
                  height: 60,
                ),
                Form(
                  key: _controller.formKey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      otpBoxOne(_controller.one, _controller.focusone, context),
                      otpBoxTwo(_controller.two, _controller.focustwo, context),
                      otpBoxThree(
                          _controller.three, _controller.focusthree, context),
                      otpBoxFour(
                          _controller.four, _controller.focusfour, context),
                    ],
                  ),
                ),
              ],
            ),
          ).expand(),
          Container(
            width: Get.width * 1,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -4),
                  blurRadius: 3,
                  color: Colors.grey.shade200,
                )
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            ),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: Get.width * .7,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.blueLight,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: "Start Job".text.white.semiBold.size(18).make(),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget otpBoxOne(
      TextEditingController controller, FocusNode focus, BuildContext context) {
    return Card(
      elevation: 14,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: AppColors.blueLight, width: 1)),
      child: Container(
        height: 40,
        width: 35,
        alignment: Alignment.center,
        child: TextFormField(
          keyboardType: TextInputType.number,
          textAlignVertical: TextAlignVertical.center,

          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            LengthLimitingTextInputFormatter(1),
          ],
          controller: controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: const InputDecoration(

            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
          onChanged:(value){
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          } ,

          // validator: (value) {
          //   if (controller.text.length == 1) {
          //     print(controller.text.length);
          //     FocusScope.of(context).nextFocus();
          //   }
          // },
        ),
      ),
    ).p4();
  }

  Widget otpBoxTwo(
      TextEditingController controller, FocusNode focus, BuildContext context) {
    return Card(
      elevation: 14,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: AppColors.blueLight, width: 1)),
      child: Container(
        height: 40,
        width: 35,
        alignment: Alignment.center,
        child: TextFormField(
            keyboardType: TextInputType.number,
            focusNode: focus,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              LengthLimitingTextInputFormatter(1),
            ],
            controller: controller,
            autovalidateMode: AutovalidateMode.disabled,
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            onChanged:(value){
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
              else if(value.length==0){
                FocusScope.of(context).previousFocus();
              }
            } ,
            // validator: (value) {
            //   if (controller.text.length == 1) {
            //     print(controller.text.length);
            //     FocusScope.of(context).nextFocus();
            //   }
            // }
            ),
      ),
    ).p4();
  }

  Widget otpBoxThree(
      TextEditingController controller, FocusNode focus, BuildContext context) {
    return Card(
      elevation: 14,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: AppColors.blueLight, width: 1)),
      child: Container(
        height: 40,
        width: 35,
        alignment: Alignment.center,
        child: TextFormField(
            focusNode: _controller.focusthree,
            keyboardType: TextInputType.number,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              LengthLimitingTextInputFormatter(1),
            ],
            controller: controller,
            autovalidateMode: AutovalidateMode.disabled,
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            onChanged:(value){
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
              else if(value.length==0){
                FocusScope.of(context).previousFocus();
              }
            } ,
            // validator: (value) {
            //   if (controller.text.length == 1) {
            //     print(controller.text.length);
            //     FocusScope.of(context).nextFocus();
            //   }
            // }
            ),
      ),
    ).p4();
  }

  Widget otpBoxFour(
      TextEditingController controller, FocusNode focus, BuildContext context) {
    return Card(
      elevation: 14,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: AppColors.blueLight, width: 1)),
      child: Container(
        height: 40,
        width: 35,
        alignment: Alignment.center,
        child: TextFormField(
            focusNode: focus,
            keyboardType: TextInputType.number,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              LengthLimitingTextInputFormatter(1),
            ],
            controller: controller,
            autovalidateMode: AutovalidateMode.disabled,
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            onChanged:(value){
              if (value.length == 1) {
                FocusScope.of(context).unfocus();
              }
              else if(value.length==0){
                FocusScope.of(context).previousFocus();
              }
            } ,
            // validator: (value) {
            //   if (controller.text.length == 1) {
            //
            //     FocusScope.of(context).unfocus();
            //   }
            // },
            ),
      ),
    ).p4();
  }
}
