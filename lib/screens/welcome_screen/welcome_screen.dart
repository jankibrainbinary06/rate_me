import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/otp_screen/otp_contoller.dart';
import 'package:rate_me/screens/profile_screen/name_screen.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/font_res.dart';
import 'package:rate_me/utils/string_res.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final OtpContoller otpContoller = Get.put(OtpContoller());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Stack(
              children: [
                Container(
                  height: Get.height,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    gradient:    LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        ColorRes.welcome1,
                        ColorRes.welcome2,
                        ColorRes.welcome1,
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height,
                  width: Get.width,
                  child: GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                    },
                    child: SizedBox(
                      height: Get.height,
                      width: Get.width,
                      child: Scaffold(
                        backgroundColor: Colors.transparent,
                        body: SafeArea(
                          child: Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                            child: Stack(
                              children:[

                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Image.asset(
                                          AssetRes.arrowLeft,
                                          width: 26,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  child: Column(

                                    children: [

                                      SizedBox(
                                        height: Get.height * 0.1,
                                      ),
                                      SizedBox(
                                        width:Get.width * 0.6,
                                        child:  const Text(
                                          StringRes.welcome,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 32,
                                              fontFamily: FontRes.poppinsRegular,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      SizedBox(height: Get.height * 0.02,),
                                      SizedBox(
                                        width:Get.width * 0.6,
                                        child:  const Text(
                                          StringRes.pleaseFollow,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: ColorRes.color555555,
                                              fontFamily: FontRes.poppinsRegular,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),

                                      Padding(
                                        padding:  EdgeInsets.symmetric
                                          (horizontal: Get.width * 0.025),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: Get.height * 0.06,),

                                            const Text(
                                              StringRes.beYourself,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: ColorRes.color606060,
                                                  fontFamily: FontRes.poppinsRegular,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const Text(
                                              StringRes.makeSure,
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: ColorRes.color8E8E8E,
                                                  fontFamily: FontRes.poppinsRegular,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(height: Get.height * 0.03,),
                                            const Text(
                                              StringRes.playItCool,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: ColorRes.color606060,
                                                  fontFamily: FontRes.poppinsRegular,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const Text(
                                              StringRes.respect,
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: ColorRes.color8E8E8E,
                                                  fontFamily: FontRes.poppinsRegular,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(height: Get.height * 0.03,),
                                            const Text(
                                              StringRes.staySafe,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: ColorRes.color606060,
                                                  fontFamily: FontRes.poppinsRegular,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const Text(
                                              StringRes.dontBe,
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: ColorRes.color8E8E8E,
                                                  fontFamily: FontRes.poppinsRegular,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(height: Get.height * 0.03,),
                                            const Text(
                                              StringRes.beProactive,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: ColorRes.color606060,
                                                  fontFamily: FontRes.poppinsRegular,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const Text(
                                              StringRes.always,
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: ColorRes.color8E8E8E,
                                                  fontFamily: FontRes.poppinsRegular,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(height: Get.height * 0.15,),
                                            Card(
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                              elevation: 5,
                                              child: GestureDetector(
                                                onTap:(){
                                                  Get.to(()=> NameScreenUser());
                                                },
                                                child: Container(
                                                  height:  45,
                                                  width: 300,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color: ColorRes.commonButtonColor,
                                                      borderRadius: BorderRadius.circular(30)
                                                  ),
                                                  child:  Text(StringRes.iAgree.toUpperCase(),style:
                                                  const TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: FontRes.poppinsMedium,
                                                      fontWeight: FontWeight.w500,
                                                      color: ColorRes.white),),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.05,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
