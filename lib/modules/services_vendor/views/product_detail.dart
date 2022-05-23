import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/API/models/response/Vendor_product_details.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_product_detail_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(
          color: Colors.white,
        ),
        title: AppStrings.produtDetail.text.size(18).color(Colors.white).make(),
        centerTitle: true,
        actions: [
          const Icon(
            Icons.notifications_outlined,
            color: Colors.white,
            size: 24,
          ).px(10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: const BoxConstraints(
                      minWidth: 100, minHeight: 140, maxWidth: 120),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(blurRadius: 3, color: Colors.grey.shade300)
                      ]),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        ImagePaths.bigStar,
                        height: 140,
                        fit: BoxFit.cover,
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Product Name"
                        .text
                        .size(14)
                        .bold
                        .color(AppColors.blueMedium)
                        .make(),
                    const SizedBox(height: 3),
                    "White Eggs,Desi Chicken eegs".text.size(13).make(),
                    const SizedBox(height: 3),
                    "QTY : 1".text.size(13).make(),
                    const SizedBox(height: 3),
                    RichText(
                      text: const TextSpan(
                        text: "Dicount Price: ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          
                          TextSpan(
                            text: " -4% ",
                            style: TextStyle(color: AppColors.red),
                          ),
                          TextSpan(
                              text: " \$119",
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ).px(8)
              ],
            ).px(10).py(12),
            const Divider(
              thickness: 1,
            ).px(10),
            const SizedBox(
              height: 20,
            ),
            "Payment Method".text.bold.make().px(10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade300, blurRadius: 2)
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: double.infinity,
                      child: "Paystack".text.size(16).bold.make().p(20)),
                  // const Divider(
                  //   thickness: 1,
                  // ),
                ],
              ),
            ).p(10),
            const SizedBox(
              height: 10,
            ),
            "Order Summary".text.bold.make().px(10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade300, blurRadius: 2)
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Items:".text.size(14).color(Colors.grey).make(),
                      "\$ 45.00".text.size(15).bold.make(),
                    ],
                  ).px(10).py(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Coupon Discount:"
                          .text
                          .size(14)
                          .color(Colors.grey)
                          .make(),
                      "\$ 15.00".text.size(15).bold.make(),
                    ],
                  ).px(10).py(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Tax:".text.size(14).color(Colors.grey).make(),
                      "\$ 0.00".text.size(15).bold.make(),
                    ],
                  ).px(10).py(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Delivery Charges :"
                          .text
                          .size(14)
                          .color(Colors.grey)
                          .make(),
                      "\$ 0.00".text.size(15).bold.make(),
                    ],
                  ).px(10).py(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Order Total:"
                          .text
                          .size(16)
                          .bold
                          .color(Colors.black)
                          .make(),
                      "\$ 35.99".text.size(16).color(AppColors.red).bold.make(),
                    ],
                  ).px(10).py(6),
                  const SizedBox(
                    height: 6,
                  )
                ],
              ),
            ).px(10).py(8),
            const SizedBox(
              height: 10,
            ),
            "Customer Detail".text.bold.make().px(10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade300, blurRadius: 2)
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Customer Name:"
                          .text
                          .size(14)
                          .semiBold
                          .color(Colors.black)
                          .make(),
                      "Amar Singh".text.size(15).color(Colors.grey).bold.make(),
                    ],
                  ).px(10).py(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Contact Number:"
                          .text
                          .size(14)
                          .semiBold
                          .color(Colors.black)
                          .make(),
                      "1234456778".text.color(Colors.grey).size(15).bold.make(),
                    ],
                  ).px(10).py(6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Address :".text.size(14).bold.color(Colors.black).make(),
                      const SizedBox(height: 5),
                      "203-F Prem Nagar,Panchkula"
                          .text
                          .color(Colors.grey)
                          .size(13)
                          .semiBold
                          .make(),
                      "Haryana, near s.d School, Panchkula,Haryana"
                          .text
                          .color(Colors.grey)
                          .size(13)
                          .semiBold
                          .make(),
                    ],
                  ).py(6).px(10),
                  const SizedBox(
                    height: 6,
                  )
                ],
              ),
            ).px(10).py(8),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
