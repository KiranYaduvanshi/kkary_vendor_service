import 'package:flutter/material.dart';
import 'package:kkary_vendors/common_widgets/continue_button.dart';
import 'package:kkary_vendors/common_widgets/linear_progress_indicator.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_icons.dart';
import 'package:kkary_vendors/utils/decorations.dart';
import 'package:velocity_x/velocity_x.dart';

class Partner extends StatefulWidget {
  const Partner({Key? key}) : super(key: key);

  @override
  State<Partner> createState() => _PartnerState();
}

class _PartnerState extends State<Partner> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CommonoWidgets.linearProgressIndicator(
                  text: "Few more steps to start your earning", value: 0.2)
              .py(16),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Tell us about yourself"
                    .text
                    .size(24)
                    .semiBold
                    .make()
                    .py24()
                    .px16(),
                fields(
                        title: "What's your name?",
                        widget: nameField(hint: "Rahul"))
                    .px24()
                    .py(16),
                fields(
                        title: "What work do you do?",
                        widget: select(lable: "Work"))
                    .px24()
                    .py16(),
                fields(
                        title: "Where do you live?",
                        widget: select(lable: "Location"))
                    .px24()
                    .py16(),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    height: 65,
                    constraints: const BoxConstraints(
                      minWidth: 200,
                      maxWidth: 350,
                    ),
                    decoration: CustomeBoxDecorations.circularAgree(
                        backColor: Colors.grey.shade100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                            // fillColor: MaterialStateProperty.all(Colors.white),
                            activeColor: AppColors.blueMedium,
                            side: BorderSide(width: 1, color: Colors.black),
                            value: false,
                            onChanged: (value) {
                              value = value!;
                              debugPrint(
                                value.toString(),
                              );
                            }).py(6).px2(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "By preoceeding, you agree to Kkary Company’s"
                                .text
                                .make()
                                .py12(),
                            "Terms & Conditions and Privacy policy"
                                .text
                                .bold
                                .make(),
                          ],
                        ).px4()
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                )
              ],
            ),
          ).expand(),
          CustomeButtons().continueButton(),
        ],
      ),
    ));
  }

  Widget fields({required String title, required Widget widget}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title.text.make().px16(),
        Container(
          decoration: CustomeBoxDecorations.circularInputField(),
          child: widget.py8().px12(),
        ).py8()
      ],
    );
  }

  Widget nameField({required String hint}) {
    return TextField(
      decoration: InputDecoration.collapsed(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    ).px4().py(6);
  }

  Widget select({required String lable}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        lable.text.make(),
        AppIcons.dropDownIcon,
      ],
    ).px4();
  }
}
