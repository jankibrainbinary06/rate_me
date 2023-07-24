import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rate_me/screens/phone_verification/screen/Widget.dart';
import 'package:rate_me/screens/walkthrough_video_screen/walkthrough_video_screen.dart';
import 'package:rate_me/utils/colour_res.dart';

class AddPhotoController extends GetxController {
  String photoPath1 = '';
  String photoPath2 = '';
  String photoPath3 = '';
  String photoPath4 = '';


  showErrorToast({String? msg}){
    return Fluttertoast.showToast(
        msg: "${msg}",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  cameraDialog(context, int i) async {
    await showModalBottomSheet(
        elevation: 10,
        barrierColor: Colors.black45,
        context: context,
        builder: (context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
            child: Container(
              height: Get.height * 0.2,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  GestureDetector(
                    onTap: () async {
                      Get.back();
                      final ImagePicker picker = ImagePicker();
                      final image = await picker.pickImage(source: ImageSource.camera);
                      if (image != null) {
                        if (i == 0) {
                          photoPath1 = image.path.toString();
                        } else if (i == 1) {
                          photoPath2 = image.path.toString();
                        } else if (i == 2) {
                          photoPath3 = image.path.toString();
                        } else if (i == 3) {
                          photoPath4 = image.path.toString();
                        }
                      }
                      update(["imagePicker"]);
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.camera,
                        color: ColorRes.commonButtonColor,
                      ),
                      title: Text(
                        "Camera",
                      ),
                    ),
                  ),
                  Container(
                    height: 0.5,
                    width: Get.width,
                    color: ColorRes.white,
                  ),
                  GestureDetector(
                    onTap: () async {
                      Get.back();
                      final ImagePicker picker = ImagePicker();
                      final image = await picker.pickImage(source: ImageSource.gallery);
                      if (image != null) {
                        if (i == 0) {
                          photoPath1 = image.path.toString();
                          print(photoPath1);
                        } else if (i == 1) {
                          photoPath2 = image.path.toString();
                        } else if (i == 2) {
                          photoPath3 = image.path.toString();
                        } else if (i == 3) {
                          photoPath4 = image.path.toString();
                        }
                      }
                     update(["imagePicker"]);
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.photo_size_select_actual_outlined,
                        color: ColorRes.commonButtonColor,
                      ),
                      title: Text("Gallery"),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
