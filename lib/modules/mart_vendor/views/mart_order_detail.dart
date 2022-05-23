import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_order_detail_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';

class MartOrderDetail extends StatelessWidget {
  MartOrderDetail({Key? key}) : super(key: key);

  final MartOrderDetailController _controller = Get.find();

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
      body: Obx(
          ()=> !_controller.fetch.value? const Center(child: CircularProgressIndicator(),) : SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: const BoxConstraints(
                        minWidth: 100, minHeight: 120, maxWidth: 120),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(blurRadius: 2, color: Colors.grey.shade400)
                        ]),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          ImagePaths.bigStar,
                          height: 120,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 5),
                      "${_controller.data?.productName}"
                          .text
                          .size(14)
                          .bold
                          .color(AppColors.blueMedium)
                          .make(),
                      const SizedBox(height: 7),
                      "${_controller.data?.tags}".text.maxLines(2).overflow(TextOverflow.ellipsis).size(13).make(),
                      const SizedBox(height: 7),
                      "QTY : ${_controller.data?.productQty}".text.size(13).make(),
                      const SizedBox(height: 7),
                      RichText(
                        text:  TextSpan(
                          text: "Dicount Price: ",
                          style: TextStyle(color: Colors.black),
                          children: [

                            TextSpan(
                              text: "-${_controller.data?.discountPercentage}%",
                              style: TextStyle(color: AppColors.red),
                            ),
                            TextSpan(
                                text: " ${AppStrings.NGN}${_controller.data?.discountPrice}",
                                style: const TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      )
                    ],
                  ).px(8).expand()
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
                        child: "${_controller.getPayment()}".text.size(16).bold.make().p(20)),
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
                        "${AppStrings.NGN}${_controller.data?.vendorPrice}".text.size(15).bold.make(),
                      ],
                    ).px(10).py(6),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     "Coupon Discount:"
                    //         .text
                    //         .size(14)
                    //         .color(Colors.grey)
                    //         .make(),
                    //     "\$ 15.00".text.size(15).bold.make(),
                    //   ],
                    // ).px(10).py(6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Tax:".text.size(14).color(Colors.grey).make(),
                        "${AppStrings.NGN}${_controller.data?.tax}".text.size(15).bold.make(),
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
                        "${AppStrings.NGN}${_controller.data?.deliveryCharges}".text.size(15).bold.make(),
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
                        "${AppStrings.NGN}${_controller.data?.totalPrice}".text.size(16).color(AppColors.red).bold.make(),
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
                        "${_controller.data?.name}".text.size(15).color(Colors.grey).bold.make(),
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
                        "${_controller.data?.contact}".text.color(Colors.grey).size(15).bold.make(),
                      ],
                    ).px(10).py(6),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Address :".text.size(14).bold.color(Colors.black).make(),
                        const SizedBox(height: 5),
                        "${_controller.data?.address},${_controller.data?.city},"
                            .text
                            .color(Colors.grey)
                            .size(13)
                            .semiBold
                            .make(),
                        "${_controller.data?.state},${_controller.data?.pincode}"
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
      ),
    );
  }
}
