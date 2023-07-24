import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rate_me/utils/colour_res.dart';

class AddPhotoController extends GetxController{

  String photoPath1 = '';
  String photoPath2 = '';
  String photoPath3 = '';
  String photoPath4 = '';


  cameraDialog(context, int i) async {
    await showModalBottomSheet(
        elevation: 10,
        barrierColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        backgroundColor: ColorRes.white,
        context: context,
        builder: (context) {
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                    Get.back();
                    final ImagePicker picker = ImagePicker();
                    final image =
                    await picker.pickImage(source: ImageSource.camera);
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
                  child: ListTile(
                    leading: const Icon(
                      Icons.camera,
                      color: ColorRes.commonButtonColor,
                    ),
                    title: Text("Camera",
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
                    final image =
                    await picker.pickImage(source: ImageSource.gallery);
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
                  child: ListTile(
                    leading: const Icon(
                      Icons.photo_size_select_actual_outlined,
                      color: ColorRes.commonButtonColor,
                    ),
                    title: Text("Gallery"),
                  ),
                ),
              ],
            ),
          );
        });
  }

}