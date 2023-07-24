import 'package:get/get.dart';

class GenderSelectController extends GetxController{

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
    update(["gender"]);
  }
  @override
  void onInit() {
    isValue = true;
    // TODO: implement onInit
    super.onInit();
  }
}