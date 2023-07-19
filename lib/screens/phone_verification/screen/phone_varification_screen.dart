import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/CommonButton.dart';
import 'package:rate_me/screens/otp_screen/otp_screen.dart';
import 'package:rate_me/screens/phone_verification/screen/phone_verificetion_controller.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/font_res.dart';
import 'package:rate_me/utils/string_res.dart';

class PhoneVerificationScreen extends StatelessWidget {
  PhoneVerificationScreen({super.key});

  final PhoneVerificationController phoneVerificationController =
      Get.put(PhoneVerificationController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Stack(
          children: [
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: Image.asset(
                AssetRes.phoneBg,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: Scaffold(
                  resizeToAvoidBottomInset: true,
                  backgroundColor: Colors.transparent,
                  body: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Get.height * 0.03,
                      ),
                      child: GetBuilder<PhoneVerificationController>(
                          builder: (contoller) {
                        return Column(
                          children: [
                            SizedBox(height: Get.height * 0.02,),
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
                                    children: [
                                      Container(
                                        height: Get.height * 0.063,
                                        decoration: const BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.black,
                                                    width: 0.7))),
                                        child: const CountryCodePicker(
                                          padding: EdgeInsets.zero,
                                          // onChanged:(){},
                                          initialSelection: 'US',
                                          favorite: ['+1', 'US'],
                                          countryFilter: ['IT', 'FR'],
                                          showFlagDialog: false,
                                          showFlag: false,
                                        ),
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.1,
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.57,
                                        height: Get.height * 0.1,
                                        child: TextFormField(
                                          controller: contoller.phoneController,
                                          decoration: const InputDecoration(
                                            hintText: "Phone Number",
                                            hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontFamily: FontRes.poppinsRegular,
                                                color: ColorRes.color8E8E8E),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.04,
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.84,
                                    child: const Text(
                                      StringRes.whenYou,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: FontRes.poppinsRegular,
                                          color: ColorRes.color8C8C8C),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.01,
                                  ),
                                  InkWell(
                                    splashFactory: NoSplash.splashFactory,
                                    onTap: () {},
                                    child: SizedBox(
                                      width: Get.width * 0.84,
                                      child: const Text(
                                        StringRes.learnWhat,
                                        style: TextStyle(
                                            fontSize: 12,
                                            decoration: TextDecoration.underline,
                                            fontFamily: FontRes.poppinsRegular,
                                            fontWeight: FontWeight.w500,
                                            color: ColorRes.color606060),
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: Get.height * 0.04,
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                    elevation: 5,
                                    child: GestureDetector(
                                      onTap:(){
                                        Get.to(()=> OtpScreen());
                                      },
                                      child: Container(
                                        height:  45,
                                        width: 300,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: ColorRes.commonButtonColor,
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        child:  Text(StringRes.submit.toUpperCase(),style:
                                        const TextStyle(
                                            fontSize: 15,
                                            fontFamily: FontRes.poppinsMedium,
                                            fontWeight: FontWeight.w500,
                                            color: ColorRes.white),),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
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
