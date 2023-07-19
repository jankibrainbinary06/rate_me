import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/add_photo_screen/add_photo_controller.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/string_res.dart';

class AddPhotoScreen extends StatelessWidget {
  AddPhotoScreen({Key? key}) : super(key: key);
  final AddPhotoController addPhotoController = Get.put(AddPhotoController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              AssetRes.gradient,
              height: Get.height,
              width: Get.width,
              fit: BoxFit.cover,
            ),
            Column(
// crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: ColorRes.color8E8E8E,
                      size: 28,
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Text(
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
                Text(
                  StringRes.addAtleast,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: ColorRes.color8E8E8E,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
