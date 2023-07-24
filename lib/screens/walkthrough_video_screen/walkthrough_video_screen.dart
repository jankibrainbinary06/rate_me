import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/CommonButton.dart';
import 'package:rate_me/common/appBar.dart';
import 'package:rate_me/common/common_back_arrow.dart';
import 'package:rate_me/common/text_styles.dart';
import 'package:rate_me/screens/Dashboard/dashboard_screen.dart';
import 'package:rate_me/screens/walkthrough_video_screen/walkthrough_controller.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/font_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:video_player/video_player.dart';

class WalkThroughVideoScreen extends StatelessWidget {
  WalkThroughVideoScreen({Key? key}) : super(key: key);
  final WalkThroughController walkThroughController =
  Get.put(WalkThroughController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WalkThroughController>(
      id: 'videoPlayer',
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              Image.asset(
                AssetRes.gradient,
                height: Get.height,
                width: Get.width,
                fit: BoxFit.cover,
              ),
              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: Get.width * 0.09),
                child: SafeArea(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(
                          height: Get.height * 0.1,
                        ),
                        SizedBox(
                          width: Get.width * 0.7,
                          child: Text(
                            StringRes.walkThrough,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorRes.color303030,
                                fontSize: 33,
                                fontFamily: FontRes.poppinsRegular,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.1,
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.play = true;
                            controller.update(['videoPlayer']);
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: Get.height * 0.28,
                                width: Get.width * 0.8,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 18,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    8,
                                  ),
                                ),
                                child: controller.play
                                    ? controller.videoController.value
                                    .isInitialized
                                    ? Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      VideoPlayer(controller
                                          .videoController),
                                    ])
                                    : SizedBox()
                                    : Image.asset(AssetRes.videoButton),
                              ),
                              Container(
                                height: Get.height * 0.26,
                                width: Get.width * 0.76,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: ColorRes.colorC6C6C6,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.05,
                        ),
                        Text(StringRes.thisIs,
                            style: poppins500Black.copyWith(
                                color: ColorRes.color8E8E8E,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center),
                        SizedBox(height: Get.height * 0.1,),
                        commonButton(
                          text: StringRes.continueText,
                          onTap: (){
                            Get.offAll(()=>DashBoardScreen());
                          }
                        ),
                        SizedBox(height: Get.height * 0.05,),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 20, top: 43),
                child: appbar(),
              ),
            ],
          ),
        );
      },
    );
  }
}
