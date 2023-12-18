import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/CommonButton.dart';
import 'package:rate_me/common/appBar.dart';
import 'package:rate_me/screens/profile_screen/name_controller.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/font_res.dart';
import 'package:rate_me/utils/string_res.dart';

class NameScreenUser extends StatelessWidget {
  NameScreenUser({super.key});

  final NameController nameController = Get.put(NameController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width * 1,
            color: ColorRes.nameBg,
          ),
          Column(
            children: [
              const Spacer(),
              Image.asset(
                AssetRes.nameImageBg,
                color: Colors.black12,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.05,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.06,
                ),
                appbar(),

                GetBuilder<NameController>(
                    id: "name",
                    builder: (controller) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.07,vertical:
                        Get.width * 0.02),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Get.height * 0.05,
                              ),
                              const Text(
                                StringRes.myNameIs,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: FontRes.poppinsRegular,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: Get.height * 0.05,
                              ),
                              SizedBox(
                                // width: Get.width * 0,
                                  height: Get.height * 0.12,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      TextField(
                                        controller:
                                        controller.nameController,
                                        style: const TextStyle(
                                            fontFamily:
                                            FontRes.poppinsRegular,
                                            fontSize: 15),
                                        onChanged: (value) {
                                          if (value.isEmpty) {
                                            controller.isValidate = false;
                                          } else {
                                            controller.isValidate = true;
                                          }
                                          controller.update(["name"]);
                                        },
                                        decoration: const InputDecoration(
                                          hintText: StringRes.sherryWalker,
                                          hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontFamily:
                                              FontRes.poppinsRegular,
                                              color:
                                              ColorRes.color8E8E8E),
                                          contentPadding:
                                          EdgeInsets.only(top: 13),
                                        ),
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.005,
                                      ),
                                      controller.isValidate == true
                                          ? SizedBox()
                                          : Text(
                                        "Please enter your name ",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: FontRes
                                                .poppinsRegular,
                                            color: Colors.red),
                                      ),
                                    ],
                                  )

                              ),
                              SizedBox(height: Get.height * 0.07,),
                              commonButton(
                                  onTap: (){
                                    return controller.validation(controller.nameController.text);
                                  },
                                  text: StringRes.continueText
                              ),
                            ],
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ],
      ),
    );

  }
}
