import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/welcome_screen/welcome_screen.dart';

class OtpContoller extends GetxController{


  late TextEditingController otpTextContoller;
  String otp = "";

  @override
  void onInit() {
    otp = "";
    // TODO: implement onInit
    super.onInit();
  }


  void validationOtp(){
    if(otp.isEmpty){
      Fluttertoast.showToast(
          msg: "Please enter code..",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }else{
      Get.to(()=>WelcomeScreen());
    }
  }
}