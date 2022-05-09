import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:kkary_vendors/utils/inpuFieldDecoration.dart';
import 'package:velocity_x/velocity_x.dart';

class MartAddProduct extends StatelessWidget {
  var dropdownvalue;

  // List of items in our dropdown menu
  var items = ['Male ', 'Female '];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueLight,
        elevation: 0,
        leading: const BackButton(
          color: AppColors.white,
        ),
        title: AppStrings.addProduct.text.size(18).white.make(),
        centerTitle: true,
        actions: [
          const Icon(Icons.notifications_outlined).px(10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .15,
              margin: EdgeInsets.only(top: 8, bottom: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.darkGray),
                // image: DecorationImage(
                //     image: FileImage(imageFile), fit: BoxFit.cover),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    //  showAlertDialog(context);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        ImagePaths.cloudImg,
                        height: 50,
                      ).py(10),
                      // const Icon(
                      //   Icons.cloud_upload_outlined,
                      //   color: Colors.grey,
                      //   size: 40,
                      // ).py(20),
                      AppStrings.clickToUploadImg.text
                          .color(Colors.grey)
                          .make(),
                    ],
                  ),
                ),
              ),
            ).px(10),
            dropDownWidget(context, AppStrings.selectCat, items),
            dropDownWidget(context, AppStrings.selectSubCat, items),
            dropDownWidget(context, AppStrings.selectBrand, items),
            dropDownWidget(context, AppStrings.selectMesurment, items),
            dropDownWidget(context, AppStrings.enterVolume, items),
            dropDownWidget(context, AppStrings.enterProductName, items),
            dropDownWidget(context, AppStrings.enterProductQTY, items),
            dropDownWidget(context, AppStrings.enterProductQTY, items),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textInputAction: TextInputAction.done,
              decoration: CustomeInputDecoration.formDecorationSquare(
                  AppStrings.enterMrpPrice, AppStrings.enterMrpPrice),
              validator: (value) {},
            ).py(5).px(10),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textInputAction: TextInputAction.done,
              decoration: CustomeInputDecoration.formDecorationSquare(
                  AppStrings.enterVendorPrice, AppStrings.enterVendorPrice),
              validator: (value) {},
            ).py(5).px(10),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textInputAction: TextInputAction.done,
              decoration: CustomeInputDecoration.formDecorationSquare(
                  AppStrings.enterTax, AppStrings.enterTax),
              validator: (value) {},
            ).py(5).px(10),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textInputAction: TextInputAction.done,
              decoration: CustomeInputDecoration.formDecorationSquare(
                  AppStrings.deliveryCharges, AppStrings.deliveryCharges),
              validator: (value) {},
            ).py(5).px(10),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textInputAction: TextInputAction.done,
              decoration: CustomeInputDecoration.formDecorationSquare(
                  AppStrings.productSku, AppStrings.productSku),
              validator: (value) {},
            ).py(5).px(10),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textInputAction: TextInputAction.done,
              decoration: CustomeInputDecoration.formDecorationSquare(
                  "${AppStrings.productTag}", AppStrings.productTag),
              validator: (value) {},
            ).py(5).px(10),
            AppStrings.status.text.make().px(10).py(5),
            Row(
              children: [
                Container(
                  width: 100,
                  decoration: const BoxDecoration(
                    color: AppColors.orange,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.check,
                        size: 16,
                        color: AppColors.white,
                      ),
                      AppStrings.publish.text.white.make().px(3),
                    ],
                  ).p(5),
                ),
                Container(
                  width: 100,
                  decoration: const BoxDecoration(
                    color: AppColors.greycolor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Center(child: AppStrings.draft.text.make().p(6)),
                ).px(6)
              ],
            ).px(10).py(5),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.darkGray),
              ),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.width * .3,
              child: TextField(
                cursorWidth: 2.0,
                keyboardType: TextInputType.multiline,
                maxLines: 6,
                decoration: InputDecoration(
                  hintText: AppStrings.enterProSummary,
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  hintMaxLines: 1,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ).py(0),
            ).px(12),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.darkGray),
              ),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.width * .3,
              child: TextField(
                cursorWidth: 2.0,
                keyboardType: TextInputType.multiline,
                maxLines: 6,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  hintText: AppStrings.enterProDescription,
                  hintMaxLines: 1,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ).py(0),
            ).px(12),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.blueLight,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {},
                child: AppStrings.save.text.white.lg
                    .color(AppColors.white)
                    .bold
                    .make()
                    .py12(),
              ),
            ).py8().px(12),
          ],
        ),
      ),
    );
  }

  Widget dropDownWidget(
      BuildContext context, String hint, List<String> itemsList) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.darkGray,
          width: 1,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        isExpanded: true,

        // Initial Value
        value: dropdownvalue,
        hint: Row(
          children: [
            Text(
              "${hint}",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            "*".text.red400.make().px(2),
          ],
        ),
        style: TextStyle(color: Colors.black, fontSize: 16),

        // Down Arrow Icon
        icon: const Icon(
          Icons.keyboard_arrow_down,
          color: AppColors.grayDark,
        ),

        // Array list of items
        items: itemsList.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (newValue) {},
        underline: DropdownButtonHideUnderline(child: Container()),
      ).px(14),
    ).py(8).px(10)
      ..wFourFifth(context).centered();
  }
}
