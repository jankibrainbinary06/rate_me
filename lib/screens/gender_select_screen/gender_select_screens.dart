import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/appBar.dart';
import 'package:rate_me/screens/gender_select_screen/gender_setect_controller.dart';
import 'package:rate_me/screens/school_screen/school_screens.dart';
import 'package:rate_me/screens/sexual_screen/sexual_select_screen.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/font_res.dart';
import 'package:rate_me/utils/string_res.dart';

class GenderSelectScreen extends StatelessWidget {
  GenderSelectScreen({super.key});

  final GenderSelectController genderSelectController =
      Get.put(GenderSelectController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      ColorRes.gender1,
                      ColorRes.gender2,
                    ], begin: Alignment.topLeft, end: Alignment.topRight),
                  ),
                ),
                SizedBox(
                  height: Get.height,
                  width: Get.width,
                  child: Column(
                    children: [
                      const Spacer(),
                      Image.asset(
                        AssetRes.genderBgImg,
                        color: Colors.black26,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height,
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                    child: Column(
                      children: [
                        SizedBox(
                          height: Get.height * 0.06,
                        ),
                        appbar(),
                        SizedBox(
                          height: Get.height * 0.06,
                        ),
                        SizedBox(
                          width: Get.width * 0.6,
                          child: Text(
                            StringRes.myGender,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 32,
                                fontFamily: FontRes.poppinsRegular,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.05,
                          ),
                          child: GetBuilder<GenderSelectController>(
                            id: "gender",
                            builder: (controller) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.09,
                                  ),
                                  DropdownButtonHideUnderline(
                                    child: SizedBox(
                                      height: Get.height * 0.07,
                                      width: Get.width,
                                      child: DropdownButton<String>(
                                        padding: EdgeInsets.zero,
                                        hint: const Text(
                                          StringRes.selectGender,
                                          style: TextStyle(
                                            fontFamily: FontRes.poppinsRegular,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: ColorRes.color8E8E8E,
                                          ),
                                        ),
                                        value: controller.dropValue,
                                        icon: Padding(
                                          padding:  EdgeInsets.only(right:
                                          Get.width * 0.02),
                                          child: Image.asset(
                                            AssetRes.dropDownIcon,
                                            height: 18,
                                            width: 20,
                                          ),
                                        ),
                                        elevation: 16,
                                        style: const TextStyle(
                                            fontFamily: FontRes.poppinsRegular,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Colors.black),
                                        onChanged: controller.dropOnChange,
                                        items: controller.dropItems!
                                            .map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.005,
                                    width: Get.width,
                                    child: const Divider(
                                      color: ColorRes.color8E8E8E,
                                      thickness: 0.7,
                                    ),
                                  ),
                                  controller.isValue == true
                                      ? SizedBox()
                                      : const Text(
                                    "Please select your gender ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: FontRes
                                            .poppinsRegular,
                                        color:
                                        Colors.red),
                                  ),
                                  SizedBox(height: Get.height * 0.050,),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30)),
                                    elevation: 5,
                                    child: GestureDetector(
                                      onTap: () {

                                       if(controller.dropValue != null){
                                         controller.isValue = true;
                                         // Get.to(()=>SchoolScreens());
                                         Get.to(()=>SexualScreen());

                                       }
                                       else{
                                         controller.isValue = false;
                                       }
                                       controller.update(["gender"]);
                                      },
                                      child: Container(
                                        height: 45,
                                        width: 300,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: ColorRes
                                                .commonButtonColor,
                                            borderRadius:
                                            BorderRadius.circular(
                                                30)),
                                        child: Text(
                                          StringRes.continueText
                                              .toUpperCase(),
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontFamily:
                                              FontRes.poppinsMedium,
                                              fontWeight:
                                              FontWeight.w500,
                                              color: ColorRes.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
