import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/API/models/response/vendor_products_response.dart';
import 'package:kkary_vendors/modules/mart_vendor/controller/mart_all_product_controller.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';

class MartAllProductscreen extends StatelessWidget {
  MartAllProductscreen({Key? key}) : super(key: key);

  MartAllProductController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.blueLight,
        leading: const BackButton(
          color: Colors.white,
        ),
        title: "Orders".text.size(18).make(),
        centerTitle: true,
        actions: [
          const Icon(Icons.notifications_outlined).px(10),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: AppColors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customButton(
                  imagePath: ImagePaths.icCopy,
                  title: "Copy",
                  onClick: () {
                    print("Copy ");
                  },
                ).px(6),
                Row(
                  children: [
                    customButton(
                      imagePath: ImagePaths.icPdf,
                      title: "PDF",
                      onClick: () {
                        print("PDF ");
                      },
                    ).px(6),
                    customButton(
                      imagePath: ImagePaths.icPrint,
                      title: "Print",
                      onClick: () {
                        print("print ");
                      },
                    ).px(6)
                  ],
                )
              ],
            ).py(12),
          ),
          // Container(
          //   color: Colors.white,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       options(ImagePaths.google, "Copy", context).p(10),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: [
          //           options(ImagePaths.google, "PDF", context),
          //           options(ImagePaths.google, "Print", context).px(6).py(10),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          Obx(
            ()=> !_controller.fetch.value ? const Center(child: CircularProgressIndicator(),).expand() : ListView.builder(
                itemCount: _controller.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return productListWidget(context , index);
                }).expand(),
          )
        ],
      ),
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
          text.text.bold.size(10).color(Colors.white).make(),
        ],
      ).p(6),
    );
  }

  // product List Widget

  Widget productListWidget(BuildContext context, int index) {
    VendorProductsData data = _controller.data.value[index];
    return GestureDetector(
      onTap: ()=> Get.toNamed(AppRoutes.martOrderDetails),
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        height: MediaQuery.of(context).size.height * .24,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            boxShadow: [
              BoxShadow(color: Colors.grey.shade300, blurRadius: 2),
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 2,
                  offset: const Offset(1, 1)),
              BoxShadow(color: Colors.grey.shade300, blurRadius: 2)
            ]),
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
              child: Center(child: "#1".text.size(10).make()),
            ),
            Container(
              //color: Colors.amber,
              constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  maxWidth: MediaQuery.of(context).size.width * 0.872),
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
                          AppStrings.productImg.text.size(10).semiBold.make(),
                          Image.asset(
                            ImagePaths.google,
                            height: 30,
                          ).py(4)
                        ],
                      ),
                      // .px(6),
                      Column(
                        children: [
                          AppStrings.productName.text.size(10).semiBold.make(),
                          "${data.productName}".text.overflow(TextOverflow.ellipsis).make().py(3),
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
                            "${data.itemType == 0 ? "Veg" : "Non-Veg"}".text.size(10).white.make().px(2).py(2)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          AppStrings.productPrice.text.size(10).semiBold.make(),
                          "${AppStrings.NGN}${data.cp}".text.make().py(4)
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
                          AppStrings.sellingPrice.text.size(10).semiBold.make(),
                          "${AppStrings.NGN}${data.sp}".text.make().py(3)
                        ],
                      ),
                      Column(
                        children: [
                          AppStrings.productQty.text.size(10).semiBold.make(),
                          "${data.productQty}".text.make().py(3)
                        ],
                      ),
                      Column(
                        children: [
                          AppStrings.status.text.size(10).semiBold.make(),
                          Container(
                            width: 65,
                            decoration: BoxDecoration(
                              color: data.status==1 ? AppColors.green : AppColors.redMid,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                                    child:
                                        "${data.status==1 ? "Active" : "InActive"}".text.size(10).white.make().px(6))
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
      ).p(5),
    );
  }
}
