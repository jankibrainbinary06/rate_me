import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/date_select_screen/date_select_screen.dart';

class NameController extends GetxController{

  TextEditingController nameController = TextEditingController();
  bool? isValidate  = false;

  validation(String value){
    if(value.isEmpty){
      isValidate = false;
    }
    else{
      isValidate = true;
      Get.to(()=> DobScreen());
      update(["name"]);
    }
    update(["name"]);
  }
  @override
  void onInit() {
    isValidate = true;
    // TODO: implement onInit
    super.onInit();
  }
}