import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/rating_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/src/flutter/sizedbox.dart';
import 'package:velocity_x/velocity_x.dart';

class Rating extends StatelessWidget {
  Rating({Key? key}) : super(key: key);
  RatingController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Add Rating".text.size(20).semiBold.make(),
            const Divider(
              color: AppColors.blueLight,
              thickness: 1,
            ).w(76),
            const SizedBox(height: 10,),
            cardInfo(context),
          ],
        ),
      ),
    );
  }

  Widget cardInfo(BuildContext context) {
    return Container(
      height: 550,
      width: MediaQuery.of(context).size.width*1,
      child: Stack(
        children: [
          SizedBox(height: 40,),
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade400)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  "How was your experience with".text.size(16).semiBold.make(),
                  "Levi Roy Home Cleaner".text.size(16).semiBold.make(),
                  SizedBox(height: 20,),
                  VxRating(
                    padding: 4,
                    isSelectable: true,
                    maxRating: 5,
                    value: 4.55,
                    size: 40,
                    normalColor: Colors.grey,
                    selectionColor: AppColors.gold,
                    onRatingUpdate: (value) {},
                  ),
                  SizedBox(height: 20,),
                  "Happy with Levi Roy".text.size(16).semiBold.make(),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      chip(0),
                      chip(1),
                      chip(2),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      chip(3),
                      chip(4),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      focusNode: _controller.focus,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.done,
                      controller: _controller.feedBackConroller,
                      maxLines: 4,
                      onSubmitted: (_) {
                        _controller.focus.unfocus();
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(150),
                      ],
                      decoration: InputDecoration(
                          focusedBorder: outBorder(),
                          enabledBorder: outBorder(),
                          errorBorder:outBorder(),
                          disabledBorder:outBorder(),
                          border:outBorder() ,
                          hintText: "Share few words",
                          filled: true,
                          fillColor: Colors.grey.shade100),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width/2-60,
            child:const CircleAvatar(
              radius: 40,
              backgroundColor: AppColors.blueLight,
              child:  CircleAvatar(
                radius: 39,
                backgroundImage: AssetImage(ImagePaths.imgUser,),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget chip(int index) {
    return GestureDetector(
      onTap: () {
        if (_controller.selected.value.contains(_controller.list[index])) {
          _controller.selected.value.remove(_controller.list[index]);
        } else {
          _controller.selected.value.add(_controller.list[index]);
        }
        _controller.selected.refresh();
      },
      child: Obx(
        () => Container(
          decoration: BoxDecoration(
              color:
                  _controller.selected.value.contains(_controller.list[index])
                      ? AppColors.blueLight
                      : Colors.grey.shade100,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color:
                    _controller.selected.value.contains(_controller.list[index])
                        ? Colors.white
                        : Colors.grey.shade400,
              )),
          child: _controller.list[index].text
              .color(
                  _controller.selected.value.contains(_controller.list[index])
                      ? Colors.white
                      : Colors.black)
              .make()
              .px(15)
              .py(4),
        ),
      ),
    );
  }

  OutlineInputBorder outBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
    );
  }
}
