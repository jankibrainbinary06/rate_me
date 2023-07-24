import 'package:get/get.dart';

class SexualController extends GetxController{

  String? dropValue ;
  bool isValue = false;

  List<String>? dropItems = [
    "Male",
    "Female",
    "Other"
  ];

  dropOnChange(String? value){
    dropValue = value!;
    isValue = true;
    update(["sexual"]);
  }
  @override
  void onInit() {
    isValue = true;
    // TODO: implement onInit
    super.onInit();
  }

}