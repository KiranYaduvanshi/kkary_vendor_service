import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RatingController extends GetxController{

  FocusNode focus = FocusNode();
  TextEditingController feedBackConroller = TextEditingController();
RxList selected =  [].obs;
  List<String> list = ["Awesome","Clean","Punctual","Friendly Nature" , "Great Skills"];
}