import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/font_res.dart';

commonButton(
    {double? height,
    double? width,
    Color? color,
    onTap,
    String? text,
    radius,
    elevation}) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    elevation: elevation ?? 5.0,
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 45,
        width: width ??  Get.width * 0.85,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: ColorRes.commonButtonColor,
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          "${text?.toUpperCase()}",
          style: TextStyle(
              fontSize: 15,
              fontFamily: FontRes.poppinsMedium,
              fontWeight: FontWeight.w500,
              color: ColorRes.white),
        ),
      ),
    ),
  );
}
