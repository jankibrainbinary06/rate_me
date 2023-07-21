import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/text_style.dart';

class LoginController extends GetxController{

  commonContainer (image,title,scale) {
    return Container(
      height: 45,
      width: Get.width * 0.8,
      decoration: const BoxDecoration(
        color: ColorRes.colorFFFFFF,
        borderRadius: BorderRadius.all(Radius.circular(25)),

        boxShadow: [
          BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 3,
              // spreadRadius: 5,
              color: Colors.black26,
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(image,scale: scale),
          ),
          SizedBox(width: Get.width * 0.08),
          Text(title,style: medium(color: ColorRes.colorFF373737,fontSize: 14),)
        ],
      ),
    );
  }

  commonRow (title,title2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            title,
            style : const TextStyle(fontSize: 12,color: ColorRes.colorFFFFFF,
                fontFamily: "Poppins-Medium",shadows: [Shadow(
                blurRadius: 5,
                color: Colors.black26,
                offset: Offset(0, 4))]),
        ),
        SizedBox(width: Get.width * 0.01),
        Text(title2, style: const TextStyle(fontSize: 12,color: ColorRes
            .colorFFFFFF, fontWeight: FontWeight.bold,decoration: TextDecoration.underline,shadows: [Shadow(
            blurRadius: 5,
            color: Colors.black26,
            offset: Offset(0, 4))])),
      ],
    );
  }
}