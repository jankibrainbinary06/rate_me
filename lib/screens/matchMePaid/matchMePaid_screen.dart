import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/responsive_ui.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:rate_me/utils/text_style.dart';

import 'matchMePaid_controller.dart';

class MatchMePaidScreen extends StatelessWidget {
   MatchMePaidScreen({Key? key}) : super(key: key);

   MatchMePaidController matchMePaidController = Get.put(MatchMePaidController());

  @override
  Widget build(BuildContext context) {
    getHeightWidthFigma(height: 844, width: 390);
    return Scaffold(
      body: Column(
        children: [
          //SizedBox(height: 25,),
          Stack(
            children: [
              Container(
                height:getVerticalSize(844),
                width:getHorizontalSize(390),
                child: Image.asset(AssetRes.matchMePaidBackGround,fit: BoxFit.fill,),
              ),
              Padding(
                padding:  EdgeInsets.only(left:getHorizontalSize(22),right: getHorizontalSize(22),top: getVerticalSize(44),),
                child: Row(
                  children: [
                    Container(
                      height:getVerticalSize(24),
                      width: getHorizontalSize(24),
                      child: Image.asset(
                        AssetRes.backArrow,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(width: getHorizontalSize(106),),
                    Text(
                        StringRes.matches,
                       style:medium(
                         fontSize: 20,
                         color: ColorRes.black
                       ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: getVerticalSize(109),left: getHorizontalSize(22),),
                child: Text(StringRes.seven,style: medium(fontSize: 18,color: ColorRes.black),textAlign: TextAlign.left,),
              ),
             Padding(
               padding:  EdgeInsets.only(left: getHorizontalSize(22),right:getHorizontalSize(22),top: getVerticalSize(180)),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   SizedBox(
                     height: Get.height * 0.78,
                     child: GridView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                       scrollDirection: Axis.vertical,
                       padding: EdgeInsets.zero,
                      // shrinkWrap: true,
                       itemCount:6,
                       itemBuilder: (context, index) {
                         return Container(
                           height: getVerticalSize(208),
                           width: getHorizontalSize(165),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             border: Border.all(color: ColorRes.white,width: 5),
                           ),
                           child: Image.asset(
                               matchMePaidController.name[index],
                             fit: BoxFit.fill,
                           ),
                         );
                       },
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 25,childAspectRatio:0.750),
                     ),
                   )
                 ],
               ),
             )
            ],
          ),
        ],
      ),
    );
  }
}
