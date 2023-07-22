import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/otp_screen/otp_screen.dart';
import 'package:rate_me/utils/string_res.dart';

class SchoolController extends GetxController{
  TextEditingController emailContoller = TextEditingController();
  bool? isValidateSchool  = false;
  RegExp reg = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9"
  r".!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  validation(String value,){
    if(value.isEmpty){
      isValidateSchool = false;
    }
    else{
      isValidateSchool = true;
      Get.to(()=> OtpScreen(type: StringRes.emailIs,));
      update(["school"]);
    }
    update(["school"]);
  }
  @override
  void onInit() {
    isValidateSchool = true;
    // TODO: implement onInit
    super.onInit();
  }
}