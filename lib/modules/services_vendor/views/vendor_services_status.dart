import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/service_status_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:velocity_x/velocity_x.dart';

class VendorServiceStatus extends StatefulWidget {
   VendorServiceStatus({Key? key}) : super(key: key);

  @override
  State<VendorServiceStatus> createState() => _VendorServiceStatusState();
}

class _VendorServiceStatusState extends State<VendorServiceStatus> {
  // int _controller.selectedTab.value = 0;
  ServiceStatusController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.blueLight,
          leading: const BackButton(
            color: Colors.white,
          ),
          title: "Service Status".text.make(),
          centerTitle: true,
        ),
        body: Obx(()=>
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      offset: const Offset(0, 2),
                      blurRadius: 3)
                ]),
                child: Padding(
                    padding: const EdgeInsets.all(12.0), child: tabSelector(context)),
              ),
              Visibility(
                visible: _controller.selectedTab.value == 0,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          children: [
                            serviceCard(1,context).p8(),
                            serviceCard(0,context).p8(),
                            serviceCard(2,context).p8(),
                          ],
                        ),
                      );
                    }).expand(),
              ),
              Visibility(
                visible: _controller.selectedTab.value == 1,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          children: [
                            serviceSucessCard(context).p8(),
                          ],
                        ),
                      );
                    }).expand(),
              ),
              Visibility(
                visible: _controller.selectedTab.value == 2,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          children: [
                            serviceCancelCard(0,context).p8(),
                            serviceCancelCard(1,context).p8(),
                          ],
                        ),
                      );
                    }).expand(),
              ),
            ],
          ),
        ));
  }

  Widget buttonTabs(
      {required String title, required Color textColor, required Color back , required BuildContext context}) {
    return Container(
      width: MediaQuery.of(context).size.width * .29,
      decoration:
      circularInputField(borderColor: back, backColor: back, border: 8),
      child: Center(child: title.text.color(textColor).make().p(8)),
    );
  }

  Widget tabSelector( BuildContext context) {
    return Container(
      decoration: circularInputField(
          borderColor: Colors.grey.shade200,
          backColor: Colors.grey.shade200,
          border: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
                _controller.selectedTab.value = 0;

            },
            child: buttonTabs(
              title: "Active",
              textColor: _controller.selectedTab.value == 0 ? Colors.white : Colors.black,
              back: _controller.selectedTab.value == 0
                  ? AppColors.blueExtraDark
                  : Colors.grey.shade200,
              context: context,
            ).py(6),
          ),
          InkWell(
            onTap: () {

                _controller.selectedTab.value = 1;

            },
            child: buttonTabs(
                title: "Sucess",
                textColor: _controller.selectedTab.value == 1 ? Colors.white : Colors.black,
                back: _controller.selectedTab.value == 1
                    ? AppColors.blueExtraDark
                    : Colors.grey.shade200, context: context)
                .py(6),

          ),
          InkWell(
            onTap: () {

                _controller.selectedTab.value = 2;

            },
            child: buttonTabs(
                title: "Canceled",
                textColor: _controller.selectedTab.value == 2 ? Colors.white : Colors.black,
                back: _controller.selectedTab.value == 2
                    ? AppColors.blueExtraDark
                    : Colors.grey.shade200, context: context)
                .py(6),
          ),
        ],
      ),
    );
  }

  Widget serviceCard(int a, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      decoration:
      circularInputField(border: 8, borderColor: Colors.grey.shade300),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "#5768404"
                      .text
                      .bold
                      .size(16)
                      .color(AppColors.blueNavy)
                      .make(),
                  "Home Service".text.size(16).semiBold.make().py4(),
                  "22 Sep 21,03:00 - 04:30"
                      .text
                      .size(8)
                      .color(Colors.grey.shade500)
                      .make(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: circularInputField(
                      backColor: a == 0
                          ? AppColors.blueNavyLight
                          : a== 2? AppColors.goldLight: AppColors.greenLight,
                      borderColor:   a==0 ? AppColors.blueNavyLight
                          : a== 2? AppColors.goldLight: AppColors.greenLight,),

                    child: a == 0
                        ? "Accepted"
                        .text
                        .bold
                        .color(AppColors.blueNavy)
                        .size(12)
                        .make()
                        .py4()
                        .px(8)
                        : a == 1
                        ? "Requested"
                        .text
                        .bold
                        .color(AppColors.greenDark)
                        .size(12)
                        .make()
                        .py4()
                        .px(8)
                        : "Progress"
                        .text
                        .bold
                        .color(AppColors.gold)
                        .size(12)
                        .make()
                        .py4()
                        .px(8),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  "\$135".text.bold.make().px8(),
                ],
              ),
            ],
          ).p(6),
          Visibility(
            visible: a != 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Levis".text.size(16).semiBold.make(),
                        Row(
                          children: [
                            "4.55".text.make(),
                            VxRating(
                              isSelectable: false,
                              maxRating: 5,
                              value: 4.55,
                              normalColor: Colors.grey,
                              selectionColor: AppColors.gold,
                              onRatingUpdate: (_) {},
                            ),
                            "156 Rating".text.make(),
                          ],
                        ).py4(),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage("assets/images/img_user.png"),
                    ),
                  ],
                ).p(6),
              ],
            ),
          ),
          Visibility(
            visible: a == 1 ||a== 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * .8,
                    alignment: Alignment.center,
                    decoration: circularInputField(
                      borderColor: AppColors.red,
                    ),
                    child: "Cancel".text.size(16).color(Colors.red).make().p(6),
                  ),
                ),
              ],
            ).py8(),
          ),
        ],
      ).p(6),
    );
  }

  Widget serviceSucessCard( BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      decoration:
      circularInputField(border: 8, borderColor: Colors.grey.shade300),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "#5768404"
                      .text
                      .bold
                      .size(16)
                      .color(AppColors.blueNavy)
                      .make(),
                  "Home Service".text.size(16).semiBold.make().py4(),
                  "22 Sep 21,03:00 - 04:30"
                      .text
                      .size(8)
                      .color(Colors.grey.shade500)
                      .make(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      decoration: circularInputField(
                        backColor:
                        AppColors.greenLight,
                        borderColor: AppColors.greenLight,),

                      child:"Completed"
                          .text
                          .bold
                          .color(AppColors.greenDark)
                          .size(12)
                          .make()
                          .py4()
                          .px(8)

                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  "${AppStrings.NGN}135".text.bold.make().px8(),
                ],
              ),
            ],
          ).p(6),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Levis".text.size(16).semiBold.make(),
                      Row(
                        children: [
                          "4.55".text.make(),
                          VxRating(
                            isSelectable: false,
                            maxRating: 5,
                            value: 4.55,
                            normalColor: Colors.grey,
                            selectionColor: AppColors.gold,
                            onRatingUpdate: (_) {},
                          ),
                          "156 Rating".text.make(),
                        ],
                      ).py4(),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage("assets/images/img_user.png"),
                  ),
                ],
              ).p(6),
            ],
          )
        ],
      ).p(6),
    );
  }

  Widget serviceCancelCard(int a , BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      decoration:
      circularInputField(border: 8, borderColor: Colors.grey.shade300),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "#5768404"
                      .text
                      .bold
                      .size(16)
                      .color(AppColors.blueNavy)
                      .make(),
                  "Home Service".text.size(16).semiBold.make().py4(),
                  "22 Sep 21,03:00 - 04:30"
                      .text
                      .size(8)
                      .color(Colors.grey.shade500)
                      .make(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      decoration: circularInputField(
                        backColor:
                        Colors.red.shade100,
                        borderColor:                         Colors.red.shade100,),

                      child:"Cancelled"
                          .text
                          .bold
                          .color(AppColors.red)
                          .size(12)
                          .make()
                          .py4()
                          .px(8)

                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  "${AppStrings.NGN}135".text.bold.make().px8(),
                ],
              ),
            ],
          ).p(6),

          Visibility(
            visible: a==0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Levis".text.size(16).semiBold.make(),
                        Row(
                          children: [
                            "4.55".text.make(),
                            VxRating(
                              isSelectable: false,
                              maxRating: 5,
                              value: 4.55,
                              normalColor: Colors.grey,
                              selectionColor: AppColors.gold,
                              onRatingUpdate: (_) {},
                            ),
                            "156 Rating".text.make(),
                          ],
                        ).py4(),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage("assets/images/img_user.png"),
                    ),
                  ],
                ).p(6),
              ],
            ),
          )
        ],
      ).p(6),
    );
  }

  BoxDecoration circularInputField(
      {Color borderColor = Colors.black,
        Color backColor = Colors.white,
        double border = 25}) {
    return BoxDecoration(
      color: backColor,
      border: Border.all(color: borderColor),
      borderRadius: BorderRadius.all(Radius.circular(border)),
    );
  }
}
