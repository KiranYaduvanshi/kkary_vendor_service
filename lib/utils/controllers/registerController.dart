import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  RxString controllerText = ''.obs;
  RxString firstName = "".obs;
  RxString lastName = "".obs;
  RxString email = "".obs;
  RxString gender = "".obs;
  RxString mobileNumber = "".obs;

  @override
  void onInit() {
    super.onInit();
  }

  handleFirstName(String value) {
    if (value.isNotEmpty) {
      //  firstName = value;
      return null;
    } else {
      return "Please Enter Your First Name";
    }
  }

  handleLastName(String value) {
    if (value.isNotEmpty) {
      //  lastName = value;
      return null;
    }
    return null;
  }

  handlePassword(String value) {
    if (value.length < 8) {
      return "Size must be greater than 8";
    } else {
      //passsword = value;
      return null;
    }
  }

  handleConfirmPassword(String value) {
    // if (value.length < 8 || value != passsword) {
    //   return "Password does'nt Match";
    // }
    // return null;
  }

  handlePhone(String value) {
    if (value.length == 10) {
      //   mobileNumber = value;
      return null;
    }
    return "Please Enter Valid Phone Number";
  }

  handleEmail(String value) {
    if (EmailValidator.validate(value)) {
      // email = value;
      return null;
    }
    return "Please Enter Valid Email";
  }

  submitRegister() async {}
}
