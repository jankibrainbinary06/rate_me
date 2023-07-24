import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/add_photo_screen/add_photo_screen.dart';
import 'package:rate_me/screens/otp_screen/otp_screen.dart';
import 'package:rate_me/utils/string_res.dart';

class SchoolController extends GetxController{
  TextEditingController emailContoller = TextEditingController();
  bool? isValidateSchool  = false;


  validation(){
    if(emailContoller.text.toString().trim().isEmpty){
      isValidateSchool = false;
      update(["school"]);
    }
    else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(emailContoller.text.toString())){
      isValidateSchool = false;
      update(["school"]);
    }else{
      isValidateSchool = true;
      Get.to(()=> AddPhotoScreen());
      update(["school"]);
    }
  }


  @override
  void onInit() {
    isValidateSchool = true;
    // TODO: implement onInit
    super.onInit();
  }
}