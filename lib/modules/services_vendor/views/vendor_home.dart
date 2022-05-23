import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/vendor_home_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';

class VendorHome extends StatelessWidget {
  const VendorHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VendorHomeController _controller = Get.find();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: "Home".text.make(),
        leading: const BackButton(color: Colors.black),
        actions:  const [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child:  CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(ImagePaths.imgUser,),
              ),
            ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 20),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(
                        color: AppColors.blueLight,
                        width: 2.0, // This would be the width of the underline
                      ),),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: "Welcome".text.semiBold.size(22).make(),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: "Amandeep".text.color(AppColors.blueExtraLight).make(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Obx(
                () => _controller.fetch.value
                    ? GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 3 / 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                        itemCount: _controller.list.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return menu(context, index);
                        })
                    : Center(child: CircularProgressIndicator()),
              ),
            ).expand(),
          ],
        ),
      ),
    );
  }

  Widget menu(BuildContext context, int index) {
    VendorHomeController _controller = Get.find();

    return InkWell(
      onTap: () {
        _controller.goToPage(_controller.list[index]);
      },
      child: Container(
        decoration: BoxDecoration(
          color: _controller.color[index],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: "10".text.size(32).make().p12(),
            ),
            "${_controller.list[index]}".text.bold.size(12).make(),
          ],
        ),
      ),
    );
  }
}
