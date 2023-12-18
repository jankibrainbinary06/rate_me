import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/gender_select_screen/gender_select_screens.dart';

class DobController extends GetxController {
  DateTime? selectDate ;
  bool? isValidate  = false;

  datePiker(context) async {
    selectDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),

    );
    if(selectDate != null){
      isValidate = true;
      update(["date"]);
    }

  }
  validation(){
    if(selectDate == null ){
      isValidate = false;
      // update(["date"]);
    }
    else{
      isValidate = true;
      print("===================> ");
      Get.to(()=> GenderSelectScreen());
      update(["date"]);
    }
    update(["date"]);
  }

  @override
  void onInit() {
    isValidate = true;
    // TODO: implement onInit
    super.onInit();
  }
}
