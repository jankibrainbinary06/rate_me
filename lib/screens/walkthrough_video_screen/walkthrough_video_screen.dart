import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/CommonButton.dart';
import 'package:rate_me/common/common_back_arrow.dart';
import 'package:rate_me/common/text_styles.dart';
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
          body: SafeArea(
            child: Stack(
              children: [
                Image.asset(
                  AssetRes.gradient,
                  height: Get.height,
                  width: Get.width,
                  fit: BoxFit.cover,
                ),
                Column(
                  children: [
                    const CommonBackArrow(),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Get.width * 0.09),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * 0.04,
                          ),
                          Text(
                            StringRes.walkThrough,
                            style: poppins500Black,
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
                                              VideoPlayer(
                                                  controller.videoController),
//                                     GestureDetector(
//                                       onTap: () {
//                                         controller.videoController.value.isPlaying
//                                             ?  controller.videoController.pause()
//                                             :  controller.videoController.play();
//                                         controller.update(['videoPlayer']);
//                                       },
//                                       child: Container(
//                                         height: 50,
//                                         width: 50,
// alignment: Alignment.center,
//                                         decoration: BoxDecoration(
//                                           color: Colors.white54,shape: BoxShape.circle,
//                                         ),
//                                         child: Icon(
//                                           controller.videoController.value.isPlaying ? Icons.pause : Icons.play_arrow,
//                                         ),
//
//                                       ),
//                                     ),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 45,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: ColorRes.commonButtonColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      "CONTINUE",
                      style: const TextStyle(
                          fontSize: 15,
                          fontFamily: FontRes.poppinsMedium,
                          fontWeight: FontWeight.w500,
                          color: ColorRes.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
            ],
          ),
        );
      },
    );
  }
}
