// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../utils/asset_res.dart';
// import '../../../../utils/colour_res.dart';
// import '../dashboard_controller.dart';
//
// class BottomBar extends StatelessWidget {
//   const BottomBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<DashBoardController>(
//       id: 'bottom_bar',
//       builder: (controller) {
//         return SafeArea(
//           child: Container(
//             decoration:  BoxDecoration(
//               color: ColorRes.colorD9D9D9.withOpacity(0.26),
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(50),
//                 topRight: Radius.circular(50),
//               ),
//             ),
//             child: Row(
//               children: [
//                 tab(AssetRes.home1,0),
//                 tab(AssetRes.home2,1),
//                 tab(AssetRes.home3,2),
//                 tab(AssetRes.home4,3),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   Widget tab(String icon1,int index) {
//     return GetBuilder<DashBoardController>(
//       id: 'bottom_bar',
//       builder: (controller) {
//         return Expanded(
//           child: GestureDetector(
//             onTap: () => controller.onBottomBarChange(index),
//             child: Container(
//               height: 69,
//               width: Get.width,
//               padding: const EdgeInsets.only(right: 30,left: 20),
//               child: Column(
//                 children: [
//                   index == controller.currentTab ?
//                   Container(
//                     height: 5,
//                     width: 61,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(4),),
//                       gradient: LinearGradient(
//                           colors:[
//                             ColorRes.colorF2609E,
//                             ColorRes.colorFFBEDA,
//                             ColorRes.colorFF1478,
//                           ]
//                       ),
//                     ),
//                   ) : const SizedBox(),
//                   const SizedBox(
//                     height: 17,
//                   ),
//                   index == 3
//                       ? Image.asset(
//                     icon1,
//                     height: 21,
//                     fit: BoxFit.fitHeight,
//                     color: index == controller.currentTab
//                         ? ColorRes.black
//                         : Colors.grey,
//                   )
//                       : Image.asset(
//                     icon1,
//                     height: 27,
//                     width: 27,
//                     fit: BoxFit.fitHeight,
//                     color: index == controller.currentTab
//                         ? ColorRes.black
//                         : Colors.grey,
//                   ),
//                 ],
//               ),
//
//             ),
//           ),
//         );
//       },
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../utils/asset_res.dart';
import '../utils/colour_res.dart';
import '../screens/screen/Dashboard/dashboard_controller.dart';

Widget bottomNavigationBar2(BuildContext context) {

  DashBoardController dashBoardController = Get.put(DashBoardController());

  return GetBuilder<DashBoardController>(
      id:"bottom_bar",
      builder: (con) {
        return Container(
          width: Get.width,
          height: Get.height * 0.081,
            decoration:  BoxDecoration(
              color: ColorRes.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 47,
                  offset: Offset(-6, 0),
                  spreadRadius: 27,
                  color:ColorRes.colorD9D9D9.withOpacity(0.26),
                )
              ],
              //ColorRes.colorD9D9D9.withOpacity(0.26),
               borderRadius: BorderRadius.only(
               topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
               ),
            ),
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 40,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Column(
                 children: [
                   dashBoardController.currentTab == 0 ? Container(
                     height: 5,
                     width: 61,
                     decoration: BoxDecoration(
                       color: ColorRes.colorFF1478,
                       borderRadius: BorderRadius.all(Radius.circular(4),),
                     ),) : SizedBox(height: 5,),
                   InkWell(
                     onTap: () {
                       dashBoardController.onBottomBarChange(0);
                     },
                     child: Container(
                       height: 49,
                       width: 60,
                       alignment: Alignment.center,
                       decoration:dashBoardController.currentTab == 0 ? BoxDecoration(
                         gradient: LinearGradient(
                           begin: Alignment.topCenter,
                           end: Alignment.bottomCenter,
                           colors: [
                             ColorRes.colorF2609E..withOpacity(0.100),
                             ColorRes.colorFF1478.withOpacity(0.200),
                             ColorRes.colorFFBEDA.withOpacity(0.30),
                             ColorRes.colorFFBEDA.withOpacity(0.30),
                             Colors.white
                           ],
                         ),
                       ) : BoxDecoration(color: Colors.transparent),
                       padding: EdgeInsets.all(12),
                       child: Image.asset(
                         AssetRes.home1,
                         color: dashBoardController.currentTab == 0 ? Colors.black : Colors.grey,
                       ),
                     ),
                   ),
                 ],
               ),
                Column(
                  children: [
                    dashBoardController.currentTab == 1 ? Container(
                      height: 5,
                      width: 61,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4),),
                        color: ColorRes.colorFF1478,
                      ),) : SizedBox(height: 5,),
                    InkWell(
                      onTap: () {
                        dashBoardController.onBottomBarChange(1);
                      },
                      child: Container(
                        height: 49,
                        width: 60,
                        alignment: Alignment.center,
                        decoration:dashBoardController.currentTab == 1 ? BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              ColorRes.colorF2609E..withOpacity(0.100),
                              ColorRes.colorFF1478.withOpacity(0.200),
                              ColorRes.colorFFBEDA.withOpacity(0.30),
                              ColorRes.colorFFBEDA.withOpacity(0.30),
                              Colors.white
                            ],
                          ),
                        ) : BoxDecoration(color: Colors.transparent),
                        padding: EdgeInsets.all(12),
                        child: Image.asset(
                          AssetRes.home2,
                          color: dashBoardController.currentTab == 1 ? Colors.black : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    dashBoardController.currentTab == 2 ? Container(
                      height: 5,
                      width: 61,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4),),
                        color: ColorRes.colorFF1478,
                      ),) : SizedBox(height: 5,),
                    InkWell(
                      onTap: () {
                        dashBoardController.onBottomBarChange(2);
                      },
                      child: Container(
                        height: 49,
                        width: 60,
                        alignment: Alignment.center,
                        decoration:dashBoardController.currentTab == 2 ? BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              ColorRes.colorF2609E..withOpacity(0.100),
                              ColorRes.colorFF1478.withOpacity(0.200),
                              ColorRes.colorFFBEDA.withOpacity(0.30),
                              ColorRes.colorFFBEDA.withOpacity(0.30),
                              Colors.white
                            ],
                          ),
                        ) : BoxDecoration(color: Colors.transparent),
                        padding: EdgeInsets.all(12),
                        child: Image.asset(
                          AssetRes.home3,
                          color: dashBoardController.currentTab == 2 ? Colors.black : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    dashBoardController.currentTab == 3 ? Container(
                      height: 5,
                      width: 61,
                      decoration: BoxDecoration(
                        color: ColorRes.colorFF1478,
                        borderRadius: BorderRadius.all(Radius.circular(4),),
                      ),) : SizedBox(height: 5,),
                    InkWell(
                      onTap: () {
                        dashBoardController.onBottomBarChange(3);
                      },
                      child: Container(
                        height: 49,
                        width: 60,
                        alignment: Alignment.center,
                        decoration:dashBoardController.currentTab == 3 ? BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              ColorRes.colorF2609E..withOpacity(0.100),
                              ColorRes.colorFF1478.withOpacity(0.200),
                              ColorRes.colorFFBEDA.withOpacity(0.30),
                              ColorRes.colorFFBEDA.withOpacity(0.30),
                              Colors.white
                            ],
                          ),
                        ) : BoxDecoration(color: Colors.transparent),
                        padding: EdgeInsets.all(12),
                        child: Image.asset(
                          AssetRes.home4,
                          color: dashBoardController.currentTab == 3 ? Colors.black : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ),
        );
      }
  );
}