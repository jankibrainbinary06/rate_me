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
        color: ColorRes.FFFFFF,
        borderRadius: BorderRadius.all(Radius.circular(25)),

        boxShadow: [
          BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 8,
              // spreadRadius: 5,
              color: Colors.black38,
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          Image.asset(image,scale: scale),
          SizedBox(width: Get.width * 0.08),
          Text(title,style: medium(color: ColorRes.FF373737,fontSize: 14),)
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
            style : const TextStyle(fontSize: 12,color: ColorRes.FFFFFF,fontFamily: "Poppins-Medium",shadows: [Shadow(blurRadius: 10.0,color: Colors.black12,offset: Offset(0, 5))]),
        ),
        SizedBox(width: Get.width * 0.01),
        Text(title2, style: const TextStyle(fontSize: 12,color: ColorRes.FFFFFF, fontWeight: FontWeight.bold,decoration: TextDecoration.underline)),
      ],
    );
  }
}