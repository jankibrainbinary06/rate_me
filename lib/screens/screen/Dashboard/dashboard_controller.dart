import 'package:get/get_state_manager/get_state_manager.dart';

class DashBoardController extends GetxController{


  int currentTab = 0;

  void onBottomBarChange(int index) {
    currentTab = index;
    if (index == 0) {
      // homeController.onInit();
    } else if (index == 1) {
      // forecastController.init();
    } else if (index == 2) {

    } else if (index ==3){
      // mapController.init();
    }
    else {

    }
    update(['bottom_bar']);
  }

}