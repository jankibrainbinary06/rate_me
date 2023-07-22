import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:rate_me/utils/text_style.dart';

import '../../../utils/colour_res.dart';
import '../matchMePaid/matchMePaid_screen.dart';


class MatchMeUserScreen extends StatelessWidget {
  const MatchMeUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 25,),
            Stack(
              children: [
                Container(
                  height:Get.height * 0.958,
                  width: Get.width,
                  child: Image.asset(AssetRes.matchMeUser,fit: BoxFit.fill,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 95,),
                    Text(StringRes.matchMe,style: regular(fontSize: 24,fontWeight: FontWeight.w400,color: ColorRes.color8E8E8E),),
                    SizedBox(width: 10,),
                    Container(
                      height: 33,
                      width: 3,
                      color: ColorRes.black,
                    ),
                    SizedBox(width: 10,),
                    Text(StringRes.RateMe,style: regular(fontSize: 24,fontWeight: FontWeight.w400,color: ColorRes.black),),
                    SizedBox(width: 25,),
                    Image.asset(
                      AssetRes.noties,
                      height: 24,
                      width: 24.2,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
                Positioned(
                  top: Get.height * 0.286,
                  left: Get.width * 0.105,
                  child: Container(
                    height: Get.height * 0.230,
                    width: Get.width * 0.470,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      AssetRes.matchMemale,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: Get.height * 0.380,
                  left: Get.width * 0.435,
                  child: Container(
                    height: Get.height * 0.230,
                    width: Get.width * 0.470,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      AssetRes.matchMeFemale,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: Get.height * 0.640,
                  left: Get.width * 0.2,
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            StringRes.maxAndSherry,
                            style: w700TextStyle.copyWith(
                              fontSize: 40,
                            ),
                          ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          StringRes.chtting,
                          style:w400TextStyle.copyWith(
                            fontSize: 12,
                          )
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: Get.height * 0.760,
                  left: Get.width * 0.110,
                  child: InkWell(
                    onTap: () {
                      Get.to(()=>MatchMePaidScreen());
                    },
                    child: Container(
                      height: 52,
                      width: Get.width * 0.768,
                      decoration: BoxDecoration(
                        color: ColorRes.colorF2609E,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 4,
                            color: ColorRes.white.withOpacity(0.10),
                          )
                        ]
                      ),
                      child: Center(
                        child: Text(StringRes.startChatting,style: medium(fontSize: 15),),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
