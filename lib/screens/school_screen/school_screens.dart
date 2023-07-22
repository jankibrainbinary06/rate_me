import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/CommonButton.dart';
import 'package:rate_me/common/appBar.dart';
import 'package:rate_me/screens/school_screen/school_controller.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/font_res.dart';
import 'package:rate_me/utils/string_res.dart';

class SchoolScreens extends StatelessWidget {
  SchoolScreens({super.key});

  final SchoolController nameController = Get.put(SchoolController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AssetRes.schoolBg
                  ),fit: BoxFit.fill
                )
              ),
            ),

             Padding(
                padding:  EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                child: GetBuilder<SchoolController>(
                  id: "school",
                  builder: (controller){
                    return Column(
                      children: [
                        SizedBox(height: Get.height *0.07,),
                        appbar(),
                        SizedBox(
                          height: Get.height * 0.05,
                        ),
                        SizedBox(
                          width: Get.width * 0.85,
                          child: Text(
                            StringRes.emailIs,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: FontRes.poppinsRegular,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(height: Get.height * 0.05,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: Get.width
                              * 0.05),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              TextField(
                                controller:
                                controller.emailContoller,
                                style: const TextStyle(
                                    fontFamily:
                                    FontRes.poppinsRegular,
                                    fontSize: 15),
                                onChanged: (value) {
                                  if (value.isEmpty) {
                                    controller.isValidateSchool = false;
                                  } else {
                                    controller.isValidateSchool = true;
                                  }
                                  controller.update(["school"]);
                                },
                                decoration: const InputDecoration(
                                  hintText: StringRes.schoolEmail,
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
                              controller.isValidateSchool == true
                                  ? SizedBox()
                                  : Text(
                                "Please enter your email  ",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: FontRes
                                        .poppinsRegular,
                                    color: Colors.red),
                              ),
                              SizedBox(
                                height: Get.height *  0.1,
                              ),
                              commonButton(
                                text: StringRes.verify,
                                onTap: (){
                                  return controller.validation(
                                      controller.emailContoller.text);
                                }
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                )

              ),

          ],
        ),
      ),
    );
  }
}
