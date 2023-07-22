import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rate_me/common/bottom_bar.dart';
import 'package:rate_me/screens/screen/homescreen/homescreen.dart';
import 'package:rate_me/screens/screen/matchMeUser/matchMeUser_screen.dart';
import '../../../utils/asset_res.dart';
import '../matchme_home/matchMe_home_screen.dart';
import '../profilescreen/profilescreen.dart';
import 'dashboard_controller.dart';

class DashBoardScreen extends StatelessWidget {
   DashBoardScreen({Key? key}) : super(key: key);

   DashBoardController dashBoardController = Get.put(DashBoardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //backgroundColor: Color(0xFFEC78AB),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Stack(
            children: [
              Container(
                height: Get.height,
                width: Get.width,
                child: Image.asset(AssetRes.homeBackground,fit: BoxFit.fill,),
              ),
              GetBuilder<DashBoardController>(
                  id: 'bottom_bar',
                  builder: (controller) {
                    if (controller.currentTab == 0) {
                      return  HomeScreen();
                    } else if (controller.currentTab == 1) {
                      return  MatchMeHomeScreen();
                    } else if (controller.currentTab == 2) {
                      return  MatchMeUserScreen();
                    } else if (controller.currentTab == 3) {
                      return const ProfileScreen();
                    }
                    return const SizedBox();
                  }),

            ],
          ),
          bottomNavigationBar2(context),
        ],
      )
     // bottomNavigationBar: bottomNavigationBar2(context),
    );
  }
}
