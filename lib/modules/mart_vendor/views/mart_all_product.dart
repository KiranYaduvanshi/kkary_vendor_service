import 'package:flutter/material.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';

class MartAllProductscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.blueLight,
        leading: const BackButton(
          color: Colors.white,
        ),
        title: AppStrings.allProducts.text.size(18).make(),
        centerTitle: true,
        actions: [
          const Icon(Icons.notifications_outlined).px(10),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                options(ImagePaths.google, "Copy", context).p(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    options(ImagePaths.google, "PDF", context),
                    options(ImagePaths.google, "Print", context).px(6).py(10),
                  ],
                ),
              ],
            ),
          ),
          ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return productListWidget(context);
              }).expand()
        ],
      ),
    );
  }

  Widget options(String data, String text, BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      width: MediaQuery.of(context).size.width * .27,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            data,
            height: 20,
          ).p2(),
          text.text.bold.size(12).color(Colors.white).make(),
        ],
      ).p(6),
    );
  }

  // product List Widget

  Widget productListWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 9,
      height: MediaQuery.of(context).size.height * .24,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 2)]),
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .24,
            width: MediaQuery.of(context).size.width * .07,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8))),
            child: Center(child: "#1".text.size(12).make()),
          ),
          Container(
            //color: Colors.amber,
            width: MediaQuery.of(context).size.width * .872,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        AppStrings.productImg.text.size(12).semiBold.make(),
                        Image.asset(
                          ImagePaths.google,
                          height: 30,
                        ).py(4)
                      ],
                    ),
                    // .px(6),
                    Column(
                      children: [
                        AppStrings.productName.text.size(12).semiBold.make(),
                        "Dolo  -65".text.make().py(3),
                        Container(
                          width: 60,
                          decoration: const BoxDecoration(
                            color: AppColors.parrotgreen,
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          child: Center(
                              child:
                                  "veg".text.size(12).white.make().px(2).py(2)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        AppStrings.productPrice.text.size(12).semiBold.make(),
                        "\$20".text.make().py(4)
                      ],
                    ),
                    // .px(6),
                  ],
                ).py(8),
                Container(
                  width: MediaQuery.of(context).size.width * .872,
                  height: 1,
                  color: Colors.grey.shade300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppStrings.sellingPrice.text.size(12).semiBold.make(),
                        "\$32".text.make().py(3)
                      ],
                    ),
                    Column(
                      children: [
                        AppStrings.productQty.text.size(12).semiBold.make(),
                        "2".text.make().py(3)
                      ],
                    ),
                    Column(
                      children: [
                        AppStrings.status.text.size(12).semiBold.make(),
                        Container(
                          width: 70,
                          decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                                  child:
                                      "Active".text.size(12).white.make().px(6))
                              .py(3),
                        ).py(3)
                      ],
                    ),
                  ],
                ).py(8)
              ],
            ),
          )
        ],
      ),
    ).p(10);
  }
}
