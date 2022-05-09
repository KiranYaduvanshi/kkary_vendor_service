import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kkary_vendors/utils/app_colors.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/inpuFieldDecoration.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpClass extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  FocusNode lastNameFn = FocusNode();
  FocusNode emailFn = FocusNode();
  FocusNode mobileFn = FocusNode();
  FocusNode passFn = FocusNode();
  FocusNode conPassFn = FocusNode();
  FocusNode myFocusNode = FocusNode();

  final nameController = TextEditingController();
  final lastNameController = TextEditingController();

  var dropdownvalue;

  // List of items in our dropdown menu
  var items = ['Male ', 'Female '];

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blueLight,
        // resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            children: [
              SingleChildScrollView(
                reverse: true,
                // padding: EdgeInsets.only(bottom: bottom),
                child: Container(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppStrings.signupAsVendor.text
                                .size(18)
                                .white
                                .bold
                                .make()
                                .p(10),
                            TextFormField(
                              controller: nameController,
                              focusNode: myFocusNode,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z]')),
                              ],
                              textInputAction: TextInputAction.next,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {},
                              onFieldSubmitted: (String value) {
                                FocusScope.of(context).requestFocus(lastNameFn);
                              },
                              decoration: CustomeInputDecoration.formDecoration(
                                  "eg- Ajay", "First Name"),
                            ).wFourFifth(context).py8(),
                            TextFormField(
                              focusNode: lastNameFn,
                              textInputAction: TextInputAction.next,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z]')),
                              ],
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {},
                              onFieldSubmitted: (String value) {
                                lastNameFn.unfocus();
                                FocusScope.of(context).requestFocus(emailFn);
                              },
                              decoration: CustomeInputDecoration.formDecoration(
                                  "eg- Garg", "Last Name"),
                            ).wFourFifth(context).py8(),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade600,
                                  width: 1,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: DropdownButton(
                                isExpanded: true,

                                // Initial Value
                                value: dropdownvalue,
                                hint: Text("Gender"),

                                // Down Arrow Icon
                                icon: const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: AppColors.blueLight,
                                ),

                                // Array list of items
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (newValue) {},
                                underline: DropdownButtonHideUnderline(
                                    child: Container()),
                              ).px(14),
                            ).py(8).px(5)
                              ..wFourFifth(context).centered(),
                            TextFormField(
                              focusNode: emailFn,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z0-9@.]')),
                              ],
                              textInputAction: TextInputAction.next,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {},
                              onFieldSubmitted: (String value) {
                                FocusScope.of(context).requestFocus(mobileFn);
                                lastNameFn.unfocus();
                              },
                              decoration: CustomeInputDecoration.formDecoration(
                                  "example@gmail.com", "Email"),
                            ).wFourFifth(context).py8(),
                            TextFormField(
                              focusNode: mobileFn,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {},
                              textInputAction: TextInputAction.next,
                              onFieldSubmitted: (String value) {
                                FocusScope.of(context).requestFocus(passFn);
                              },
                              decoration: CustomeInputDecoration.formDecoration(
                                  "eg - 9855548154 ", "Phone*"),
                            ).wFourFifth(context).py8(),
                            TextFormField(
                              focusNode: passFn,
                              inputFormatters: [
                                FilteringTextInputFormatter.deny(' ')
                              ],
                              obscureText: true,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {},
                              textInputAction: TextInputAction.next,
                              onFieldSubmitted: (String value) {
                                FocusScope.of(context).requestFocus(conPassFn);
                              },
                              decoration: CustomeInputDecoration.formDecoration(
                                  "**********", "Password"),
                            ).wFourFifth(context).py8(),
                            TextFormField(
                              focusNode: conPassFn,
                              inputFormatters: [
                                FilteringTextInputFormatter.deny(' ')
                              ],
                              obscureText: true,
                              textInputAction: TextInputAction.done,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {},
                              decoration: CustomeInputDecoration.formDecoration(
                                  "********", "Confirm Password"),

                              // decoration: const InputDecoration(
                              //     hintText: "**********",
                              //     labelText: "Confirm Password*"),
                            ).wFourFifth(context).py8(),
                          ],
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      )),
                                  onPressed: () {},
                                  child: AppStrings.signUp.text.lg
                                      .color(AppColors.blueLight)
                                      .bold
                                      .make()
                                      .py12(),
                                ),
                              ).wFourFifth(context).py8(),
                              InkWell(
                                onTap: () {},
                                child: RichText(
                                  text: const TextSpan(
                                    text: AppStrings.alreadyAccount,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: AppStrings.signIn,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ).py(10),
                              )
                            ],
                          ).py(8),
                        ).py(10).expand()
                      ],
                    ),
                  ).p32(),
                ),
              ).expand(),
            ],
          ),
        ),
      ),
    );
  }
}
