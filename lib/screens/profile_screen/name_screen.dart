import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    return Column(
      children: [
        Expanded(
            child: Stack(
          children: [
            Container(
              height: Get.height * 1,
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
            SizedBox(
              height: Get.height * 1,
              width: Get.width * 1,
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.05,
                        ),
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
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
                                                    hintText: StringRes.sherry,
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
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(30)),
                                          elevation: 5,
                                          child: GestureDetector(
                                            onTap: () {
                                              return controller.validation(
                                                  controller
                                                      .nameController.text);
                                            },
                                            child: Container(
                                              height: 45,
                                              // width: 300,
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
                                    ),
                                  ),
                                );
                              })
                        ],
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
