import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/CommonButton.dart';
import 'package:rate_me/common/appBar.dart';
import 'package:rate_me/screens/school_screen/school_screens.dart';
import 'package:rate_me/screens/sexual_screen/sexual_controller.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/font_res.dart';
import 'package:rate_me/utils/string_res.dart';

class SexualScreen extends StatelessWidget {
  SexualScreen({super.key});

  final SexualController sexualController = Get.put(SexualController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetRes.person), fit: BoxFit.fill)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.06,
                ),
                appbar(),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                SizedBox(
                  width: Get.width * 0.6,
                  child: Text(
                    StringRes.mySexual,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 27,
                        fontFamily: FontRes.poppinsRegular,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.05,
                  ),
                  child: GetBuilder<SexualController>(
                    id: "sexual",
                    builder: (controller) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Get.height * 0.03,
                          ),
                          DropdownButtonHideUnderline(
                            child: SizedBox(
                              height: Get.height * 0.07,
                              width: Get.width,
                              child: DropdownButton<String>(
                                padding: EdgeInsets.zero,
                                hint: Text(
                                  StringRes.select,
                                  style: TextStyle(
                                    fontFamily: FontRes.poppinsRegular,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: ColorRes.color8E8E8E,
                                  ),
                                ),
                                value: controller.dropValue,
                                icon: Padding(
                                  padding:
                                      EdgeInsets.only(right: Get.width * 0.02),
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
                                items:
                                    controller.dropItems!.map((String value) {
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
                                  "Please select your sexual orientation ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: FontRes.poppinsRegular,
                                      color: Colors.red),
                                ),
                          SizedBox(
                            height: Get.height * 0.070,
                          ),
                          commonButton(
                              text: StringRes.continueText,
                              onTap: () {
                                if (controller.dropValue != null) {
                                  controller.isValue = true;
                                  Get.to(() => SchoolScreens());
                                } else {
                                  controller.isValue = false;
                                }
                                controller.update(["sexual"]);
                              }),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
