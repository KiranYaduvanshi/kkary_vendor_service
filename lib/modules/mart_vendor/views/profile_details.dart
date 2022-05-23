import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/API/endpoints.dart';
import 'package:kkary_vendors/modules/services_vendor/controller/profile_controller.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/src/flutter/padding.dart';

class ProfileInfo extends StatelessWidget {
   ProfileInfo({Key? key}) : super(key: key);

ProfileController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "Profile Info".text.white.make(),
        centerTitle: true,
        leading: const BackButton(
          color: Colors.white,
        ),
        actions: [
          TextButton(onPressed: (){}, child: "Save".text.white.make())
        ],
      ),
      backgroundColor: Colors.white,
      body: Obx(()=>
        !_controller.fetch.value ?Center(child: CircularProgressIndicator(),):  SingleChildScrollView(
          child: Form(
            key: _controller.formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                       CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.blueLight,
                        child:  CircleAvatar(
                          radius: 29,
                          backgroundImage: NetworkImage(_controller.uri),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              "${_controller.info?.fname} ${_controller.info!.lname}".text.color(AppColors.black).make(),
                            GestureDetector(
                              onTap: (){},
                              child: const Icon(
                                      Icons.edit,
                                      size: 18,
                                      color: AppColors.blueLight,
                                    ),
                            ),
                            ],
                          ),
                          _controller.info!.email!.text.color(Colors.grey.shade400).make().py(4),
                        ],
                      ).p(10),
                    ],
                  ).py20(),
                ),
                TextFormField(
                  controller: _controller.name,
                  // initialValue: "${_controller.info?.fname} ${_controller.info!.lname}",
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9  ]')),
                  ],
                  decoration: deco("Name", "Full Name"),
                  validator: (value) {},
                ).px(24),
                const Divider(
                  color: Colors.grey,
                ),
                TextFormField(
                  controller: _controller.bio,
                  // initialValue: _controller.info!.bio,
                  // inputFormatters: [
                  //   FilteringTextInputFormatter.allow(
                  //       RegExp('[a-zA-Z 0-9 @#%*]')),
                  // ],
                  decoration:deco("Add bio here", "bio"),
                  validator: (value) {},
                ).px(24),
                const      Divider(
                  color: Colors.grey,
                ),
                TextFormField(
                  controller: _controller.address,
                  // initialValue: _controller.info!.address,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: 2,
                  validator: (value) {},
                  // inputFormatters: [
                  //   FilteringTextInputFormatter.allow(
                  //       RegExp('[a-zA-Z 0-9@#/]')),
                  // ],
                  decoration: deco("Add Address", "Address"),
                ).px(24),
                const Divider(
                  color: Colors.grey,
                ),
                TextFormField(
                  controller: _controller.email,
                  style: TextStyle(color: Colors.grey[600]),
                  readOnly: true,
                  // initialValue: _controller.info!.email,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {},
                  // inputFormatters: [
                  //   FilteringTextInputFormatter.allow(
                  //       RegExp('[a-zA-Z 0-9@#/]')),
                  // ],
                  decoration: deco("Enter Email", "Email"),
                ).px(24),
                const Divider(
                  color: Colors.grey,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.grey[600]),

                    controller: _controller.phone,
                  // readOnly: isPhoneEmpty,
                  // initialValue: _controller.info!.mobile,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value?.length==10 ? null : "Please Enter Valid Phone ";
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                        RegExp('[0-9+]')),
                  ],
                  decoration: deco("Add phone number", "Phone")
                ).px(24),
                const Divider(
                  color: Colors.grey,
                ),

                // Container(
                //   // color: Colors.grey.shade200,
                //   width: double.infinity,
                //   child: "${this.email}"
                //       .text
                //       .gray300
                //       .base
                //       .size(16)
                //       .make()
                //       .px(16),
                // ).px(24).py(8),
                // const Divider(
                //   color: Colors.grey,
                // ).px(24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration deco(String hint , String lable){
    return InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelStyle: TextStyle(
        color: AppColors.blueLight,
      ),
      focusedBorder: InputBorder.none,
      border:InputBorder.none,

      hintText: hint,
      labelText: lable,
    );
  }
}
