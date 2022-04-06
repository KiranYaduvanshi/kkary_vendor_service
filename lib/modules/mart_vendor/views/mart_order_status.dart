import 'package:flutter/material.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:kkary_vendors/utils/app_strings.dart';

class MartOrderStatus extends StatelessWidget {
  const MartOrderStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String classNametoLog = "Class: OrderDetailsPage";
    return Scaffold(
      backgroundColor: AppColors.ultraLightGray,
      appBar: AppBar(
        centerTitle: true,
        title: "Pending Orders".text.make(),
        actions: [
          const Icon(
            Icons.notifications_none,
            color: Colors.white,
          ).px(15),
        ],
      ),
      body: Column(
        children: [
          const Placeholder(
            fallbackHeight: 30,
          ),
          Container(
            color: AppColors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customButton(
                  imagePath: ImagePaths.icCopy,
                  title: "Copy",
                  onClick: () {
                    print("Copy $classNametoLog");
                  },
                ).px(6),
                Row(
                  children: [
                    customButton(
                      imagePath: ImagePaths.icPdf,
                      title: "PDF",
                      onClick: () {
                        print("PDF $classNametoLog");
                      },
                    ).px(6),
                    customButton(
                      imagePath: ImagePaths.icPrint,
                      title: "Print",
                      onClick: () {
                        print("print $classNametoLog");
                      },
                    ).px(6)
                  ],
                )
              ],
            ).py(12),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                orderedItem(
                    count: "1",
                    ctx: context,
                    orderID: "OD4771709634",
                    productName: "Banana 12 Pcs",
                    totalPrice: "12",
                    whenOrdered: "1 Day Ago",
                    orderStatus: "Pending",
                    paymentMethod: "Online"),
                orderedItem(
                    count: "8",
                    ctx: context,
                    orderID: "OD4771709634",
                    productName: "Banana 12 Pcs",
                    totalPrice: "12",
                    whenOrdered: "1 Day Ago",
                    orderStatus: "Pending",
                    paymentMethod: "COD"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget orderedItem({
    required String count,
    required String orderID,
    required String productName,
    required String totalPrice,
    required String whenOrdered,
    required String orderStatus,
    required String paymentMethod,
    required BuildContext ctx,
  }) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.5, -0.5), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          height: 130,
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                height: 130,
                width: MediaQuery.of(ctx).size.width * .07,
                decoration: const BoxDecoration(
                  color: AppColors.grayDark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    topRight: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                ),
                child: "#$count ".text.make(),
              ),
              Container(
                height: 130,
                color: Colors.white,
                width: MediaQuery.of(ctx).size.width * .8,
                child: Column(
                  children: [
                    Container(
                      height: 64.2,
                      color: AppColors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(ctx).size.width * .265666,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                "Order ID"
                                    .text
                                    .semiBold
                                    .size(11)
                                    .black
                                    .make()
                                    .py12(),
                                orderID.text.semiBold
                                    .size(11)
                                    .color(AppColors.grayDark)
                                    .make(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(ctx).size.width * .26566,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                "Product Name"
                                    .text
                                    .semiBold
                                    .size(11)
                                    .black
                                    .make()
                                    .py12(),
                                productName.text.semiBold
                                    .size(11)
                                    .color(AppColors.grayDark)
                                    .make(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(ctx).size.width * .26566,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                "Total Price"
                                    .text
                                    .semiBold
                                    .size(11)
                                    .black
                                    .make()
                                    .py12(),
                                "${AppStrings.nigerianCurrency} $totalPrice"
                                    .text
                                    .semiBold
                                    .size(11)
                                    .color(AppColors.grayDark)
                                    .make(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: AppColors.grayDark,
                      height: 1.6,
                    ),
                    Container(
                      height: 64.2,
                      color: AppColors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(ctx).size.width * .26566,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                "Order Placed"
                                    .text
                                    .semiBold
                                    .size(11)
                                    .black
                                    .make()
                                    .py12(),
                                whenOrdered.text.semiBold
                                    .size(11)
                                    .color(AppColors.grayDark)
                                    .make(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(ctx).size.width * .26566,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                "Payment Method"
                                    .text
                                    .semiBold
                                    .size(11)
                                    .black
                                    .make()
                                    .py12(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.blueLight,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: paymentMethod.text.white
                                      .size(11)
                                      .make()
                                      .px(6)
                                      .py(2),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(ctx).size.width * .26566,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                "Status"
                                    .text
                                    .semiBold
                                    .size(11)
                                    .black
                                    .make()
                                    .py12(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.ultraLightGreen,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: orderStatus.text.white
                                      .size(11)
                                      .color(AppColors.white)
                                      .make()
                                      .px(6)
                                      .py(2),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 130,
                width: MediaQuery.of(ctx).size.width * .07,
                decoration: const BoxDecoration(
                  color: AppColors.blueLight,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ).py(4).px(6),
        Positioned(
            right: MediaQuery.of(ctx).size.width * .035,
            top: 63,
            child: "Action".text.size(9).make().rotate(270)),
      ],
    );
  }

  Widget customButton(
      {required String imagePath,
      required String title,
      required Function onClick}) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.red,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath).px(8),
            title.text.white.make().px(4),
            const SizedBox(
              width: 10,
            ),
          ],
        ).py(4),
      ),
    );
  }
}
