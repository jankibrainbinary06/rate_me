import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/responsive_ui.dart';
import 'package:rate_me/screens/phone_verification/screen/Widget.dart';
import 'package:rate_me/screens/phone_verification/screen/phone_verificetion_controller.dart';
import 'package:rate_me/screens/splash/splash_screen.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/font_res.dart';
import 'package:rate_me/utils/string_res.dart';

class PhoneVerificationScreen extends StatelessWidget {
  PhoneVerificationScreen({super.key});

  final PhoneVerificationController phoneVerificationController = Get.put(PhoneVerificationController());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body:Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AssetRes.phoneBg,),fit: BoxFit.fill,)
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.height * 0.03,
                vertical: Get.height * 0.03
            ),
            child: GetBuilder<PhoneVerificationController>(
                id: "country",
                builder: (contoller) {
                  return Form(
                    key: formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Row(
                          children: [
                            InkWell(
                              splashFactory: NoSplash.splashFactory,
                              onTap: () {
                                Get.back();
                              },
                              child: Image.asset(
                                AssetRes.arrowLeft,
                                width: 26,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.05,
                        ),
                        const Text(
                          StringRes.myPhone,
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: FontRes.poppinsRegular,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: Get.height * 0.07,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Get.height * 0.01,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  countryCodePicker(context),
                                  SizedBox(width: Get.width * 0.05,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: Get.width * 0.51,
                                        height: Get.height * 0.063,
                                        child: TextField(
                                          controller: contoller.phoneController,
                                          keyboardType: TextInputType.number,
                                          onChanged: (value) {
                                            if (value.isEmpty) {
                                              contoller.isValidate = false;
                                            } else {
                                              contoller.isValidate = true;
                                            }
                                            contoller.update(["country"]);
                                          },
                                          style: const TextStyle(
                                              fontFamily: FontRes.poppinsRegular,
                                              fontSize: 16),
                                          decoration: const InputDecoration(
                                            hintText: "Phone Number",
                                            hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontFamily: FontRes.poppinsRegular,
                                                color: ColorRes.color8E8E8E),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: Get.height * 0.005),
                                      contoller.isValidate == true ? SizedBox() : Text("Please enter phone number ", style: TextStyle(fontSize: 12, fontFamily: FontRes.poppinsRegular, color: Colors.red),)
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Get.height * 0.08,
                              ),
                              SizedBox(
                                width: Get.width * 0.84,
                                child: const Text(
                                  StringRes.whenYou,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                      FontRes.poppinsRegular,
                                      color: ColorRes.color8C8C8C),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.01,
                              ),
                              InkWell(
                                splashFactory:
                                NoSplash.splashFactory,
                                onTap: () {},
                                child: SizedBox(
                                  width: Get.width * 0.84,
                                  child: const Text(
                                    StringRes.learnWhat,
                                    style: TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration
                                            .underline,
                                        fontFamily:
                                        FontRes.poppinsRegular,
                                        fontWeight: FontWeight.w500,
                                        color:
                                        ColorRes.color606060),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.04,
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(30)),
                                elevation: 5,
                                child: GestureDetector(
                                  onTap: () {
                                     contoller.validation(contoller.phoneController.text);
                                  },
                                  child: Container(
                                    height: 45,
                                    width: Get.width * 0.85,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: ColorRes.commonButtonColor,
                                        borderRadius:
                                        BorderRadius.circular(
                                            30)),
                                    child: Text(
                                      StringRes.verify.toUpperCase(),
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
                      ],
                    ),
                  );
                }),
          ),
        ],
      )
    );

  }

  Widget countryCodePicker(BuildContext context) {
    return InkWell(
      onTap: () => phoneVerificationController.onCountryTap(context),
      child: Container(
        height: Get.height * 0.063,
        width: Get.width * 0.26,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1,color: Color(0xFF4D4D4D))
          )
        ),
        child: Row(
          children: [
            Text(phoneVerificationController.countryModel.flagEmoji),
            const SizedBox(width: 9),
            Text(
              "+${phoneVerificationController.countryModel.phoneCode}",
            ),
            //SizedBox(width: Get.width * 0.02533),
            Icon(Icons.keyboard_arrow_down_rounded),
            SizedBox(width: Get.width * 0.024),
          ],
        ),
      ),
    );
  }

}
