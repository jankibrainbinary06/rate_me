import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/responsive_ui.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:rate_me/utils/text_style.dart';

class MatchMePaidScreen extends StatelessWidget {
  const MatchMePaidScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getHeightWidthFigma(height: 844, width: 390);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
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
                      padding:  EdgeInsets.only(left:getHorizontalSize(22),right: getHorizontalSize(22),top: getVerticalSize(22),),
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
                   SizedBox(height: 55,),
                  Column(
                    children: [
                      Text(StringRes.seven,style: medium(fontSize: 18,),)
                    ],
                  ),
                   // Padding(
                   //   padding: const EdgeInsets.only(left: 15,right: 15),
                   //   child: Column(
                   //     children: [
                   //       SizedBox(height: 80,),
                   //       SizedBox(
                   //         height: Get.height,
                   //         child: GridView.builder(
                   //           padding: EdgeInsets.zero,
                   //           itemCount: 12,
                   //           itemBuilder: (context, index) {
                   //             return Container(
                   //               height: Get.height * 0.450,
                   //               width: Get.width * 0.423,
                   //               color: Colors.green,
                   //             );
                   //           },
                   //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 25,childAspectRatio:0.750),
                   //         ),
                   //       )
                   //     ],
                   //   ),
                   // )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
