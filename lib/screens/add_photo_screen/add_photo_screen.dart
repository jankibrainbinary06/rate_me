import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/CommonButton.dart';
import 'package:rate_me/common/appBar.dart';
import 'package:rate_me/screens/add_photo_screen/add_photo_controller.dart';
import 'package:rate_me/screens/walkthrough_video_screen/walkthrough_video_screen.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/string_res.dart';

class AddPhotoScreen extends StatelessWidget {
  AddPhotoScreen({Key? key}) : super(key: key);
  final AddPhotoController addPhotoController = Get.put(AddPhotoController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddPhotoController>(
      id: "imagePicker",
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
              SafeArea(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.1,
                      ),
                      const Text(
                        StringRes.addPhotos,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 33,
                          color: ColorRes.color303030,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                      const Text(
                        StringRes.addAtleast,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ColorRes.color8E8E8E,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              controller.photoPath1.isEmpty
                                  ? Container(
                                      height: Get.height * 0.2,
                                      width: Get.width * 0.35,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                          5,
                                        ),
                                        border: Border.all(
                                            color: ColorRes.colorC6C6C6,
                                            width: 3),
                                      ),
                                    )
                                  : Container(
                                      height: Get.height * 0.2,
                                      width: Get.width * 0.35,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                          5,
                                        ),
                                        border: Border.all(
                                            color: ColorRes.colorC6C6C6,
                                            width: 3),
                                          image: DecorationImage(
                                            image: FileImage(
                                              File(
                                                controller.photoPath1.toString(),
                                              ),
                                            ),
                                            fit: BoxFit.fill,
                                          )
                                      ),
                               // child: Image.file(File(controller.photoPath1.toString(),),fit: BoxFit.fill,),
                                    ),
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Container(
                                    height: Get.height * 0.24,
                                    width: Get.width * 0.40,
                                    color: Colors.transparent,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.cameraDialog(context, 0);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                        color: ColorRes.commonButtonColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              controller.photoPath2.isEmpty
                                  ? Container(
                                      height: Get.height * 0.2,
                                      width: Get.width * 0.35,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                          5,
                                        ),
                                        border: Border.all(
                                            color: ColorRes.colorC6C6C6,
                                            width: 3),
                                      ),
                                    )
                                  : Container(
                                      height: Get.height * 0.2,
                                      width: Get.width * 0.35,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                          5,
                                        ),
                                        border: Border.all(
                                            color: ColorRes.colorC6C6C6,
                                            width: 3),
                                          image: DecorationImage(
                                            image: FileImage(
                                              File(
                                                controller.photoPath2.toString(),
                                              ),
                                            ),
                                            fit: BoxFit.fill,
                                          )
                                      ),
                               // child: Image.file(File(controller.photoPath2.toString(),),fit: BoxFit.fill,),
                                    ),
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Container(
                                    height: Get.height * 0.24,
                                    width: Get.width * 0.40,
                                    color: Colors.transparent,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.cameraDialog(context, 1);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                        color: ColorRes.commonButtonColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              controller.photoPath3.isEmpty
                                  ? Container(
                                      height: Get.height * 0.2,
                                      width: Get.width * 0.35,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                          5,
                                        ),
                                        border: Border.all(
                                            color: ColorRes.colorC6C6C6,
                                            width: 3),
                                      ),
                                    )
                                  : Container(
                                      height: Get.height * 0.2,
                                      width: Get.width * 0.35,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                          5,
                                        ),
                                        border: Border.all(
                                            color: ColorRes.colorC6C6C6,
                                            width: 3),
                                          image: DecorationImage(
                                            image: FileImage(
                                              File(
                                                controller.photoPath3.toString(),
                                              ),
                                            ),
                                            fit: BoxFit.fill,
                                          )
                                      ),
                                // child: Image.file(File(controller.photoPath3.toString(),),fit: BoxFit.fill,),
                                    ),
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Container(
                                    height: Get.height * 0.24,
                                    width: Get.width * 0.40,
                                    color: Colors.transparent,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.cameraDialog(context, 2);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                        color: ColorRes.commonButtonColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              controller.photoPath4.isEmpty
                                  ? Container(
                                      height: Get.height * 0.2,
                                      width: Get.width * 0.35,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                          5,
                                        ),
                                        border: Border.all(
                                            color: ColorRes.colorC6C6C6,
                                            width: 3),
                                      ),
                                    )
                                  : Container(
                                      height: Get.height * 0.2,
                                      width: Get.width * 0.35,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                          5,
                                        ),
                                        border: Border.all(
                                            color: ColorRes.colorC6C6C6,
                                            width: 3),
                                          image: DecorationImage(
                                            image: FileImage(
                                              File(
                                                controller.photoPath4.toString(),
                                              ),
                                            ),
                                            fit: BoxFit.fill,
                                          )
                                      ),
                               // child: Image.file(File(controller.photoPath4.toString(),),fit: BoxFit.fill,),
                                    ),
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Container(
                                    height: Get.height * 0.24,
                                    width: Get.width * 0.40,
                                    color: Colors.transparent,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.cameraDialog(context, 3);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: ColorRes.commonButtonColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.12,
                      ),
                      commonButton(
                          text: StringRes.Continue.toUpperCase(),
                          elevation: 0.0,
                          onTap: (){
                            if (controller.photoPath1 != "" && controller.photoPath2 != "" ||
                                controller.photoPath1 != "" && controller.photoPath3 != "" ||
                                controller. photoPath1 != "" && controller.photoPath4 != "" ||
                                controller. photoPath2 != "" && controller.photoPath1 != "" ||
                                controller.photoPath2 != "" && controller.photoPath3 != "" ||
                                controller.photoPath2 != "" && controller.photoPath4 != "" ||
                                controller.photoPath3 != "" && controller.photoPath1 != "" ||
                                controller.photoPath3 != "" && controller.photoPath2 != "" ||
                                controller. photoPath3 != "" && controller.photoPath4 != "" ||
                                controller.photoPath4 != "" && controller.photoPath1 != "" ||
                                controller.photoPath4 != "" && controller.photoPath2 != "" ||
                                controller. photoPath4 != "" && controller.photoPath3 != "") {
                              Get.to(() => WalkThroughVideoScreen());
                            } else {
                               controller.showErrorToast(msg: "Please add 2 photos required!");
                              controller.update(["imagePicker"]);
                            }
                          },
                      ),
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                    ],
                  ),
                ),
              ),
              // appbar()
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 43),
                child:appbar()
                ),

            ],
          ),

        );
      },
    );
  }
}
