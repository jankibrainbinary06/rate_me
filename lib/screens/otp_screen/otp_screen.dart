import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/add_photo_screen/add_photo_screen.dart';
import 'package:rate_me/screens/otp_screen/otp_contoller.dart';
import 'package:rate_me/screens/welcome_screen/welcome_screen.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/font_res.dart';
import 'package:rate_me/utils/string_res.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key,});

  final OtpContoller otpContoller = Get.put(OtpContoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AssetRes.otpBg,),fit: BoxFit.fill,)),
          ),
          Padding(
            padding:
            EdgeInsets.symmetric(
                horizontal: Get.width * 0.058,
                vertical  : Get.width * 0.058,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.035,
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
                        width: 25,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                const Text(
                  StringRes.enterCode,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: FontRes.poppinsRegular,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: Get.height * 0.07,
                ),
                VerificationCode(
                    onCompleted: (value) {
                      otpContoller.otp = value;

                    },
                    length: 4,
                    margin: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.02),
                    onEditing: ( value) {
                    },
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Text(
                  StringRes.resend,
                  style: TextStyle(
                      fontSize: 15,
                      // decoration: TextDecoration.underline,
                      shadows: [
                        Shadow(
                            color: Colors.grey.shade200,
                            blurRadius: 5)
                      ],
                      fontFamily: FontRes.poppinsRegular,
                      fontWeight: FontWeight.w500,
                      color: ColorRes.color8E8E8E),
                ),
                SizedBox(
                  height: Get.height * 0.15,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  elevation: 5,
                  child: GestureDetector(
                    onTap: () {
                      otpContoller.validationOtp();
                    },
                    child: Container(
                      height: 45,
                      width:  Get.width * 0.85,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: ColorRes.commonButtonColor,
                          borderRadius:
                          BorderRadius.circular(30)),
                      child: Text(
                        StringRes.submit.toUpperCase(),
                        style: const TextStyle(
                            fontSize: 15,
                            fontFamily: FontRes.poppinsMedium,
                            fontWeight: FontWeight.w500,
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



  }
}
