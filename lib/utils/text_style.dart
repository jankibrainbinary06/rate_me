import 'package:flutter/material.dart';
import 'package:rate_me/utils/colour_res.dart';

TextStyle regular({Color? color,
  double? fontSize,
  double? letterSpacing,
  TextDecoration? textdeco,
  double? height,String? fontFamily,

  FontWeight? fontWeight}) {
  return TextStyle(
    color: color ?? ColorRes.white,
    fontWeight: fontWeight ?? FontWeight.w400,
    fontFamily: fontFamily ?? "Poppins-Regular",
    fontSize: fontSize ?? 14,
    letterSpacing: letterSpacing ?? 0,
    decoration: textdeco,
    height: height,

  );
}

TextStyle medium({Color? color,
  double? fontSize,
  double? letterSpacing,
  FontWeight? fontWeight}) {
  String? fontFamily;
  return TextStyle(
    color: color ?? ColorRes.white,
    fontFamily: fontFamily ?? "Poppins-Medium",
    fontWeight: fontWeight ?? FontWeight.w500,
    fontSize: fontSize ?? 14,
    //fontFamily: FontRes.poppinsMedium,
    letterSpacing: letterSpacing ?? 0,
  );
}

TextStyle semiBold({Color? color,
  double? fontSize,
  double? letterSpacing,
  TextDecoration? textdeco,
  FontWeight? fontWeight}) {
  String? fontFamily;
  return TextStyle(
    color: color ?? ColorRes.white,
    fontWeight: fontWeight ?? FontWeight.w600,
    fontSize: fontSize ?? 14,
    decoration: textdeco,
    fontFamily: fontFamily ?? "Poppins-Regular",
    //fontFamily: FontRes.poppinsSemiBold,
    letterSpacing: letterSpacing ?? 0,
  );
}


TextStyle bold({Color? color,
  double? fontSize,
  double? letterSpacing,
  FontWeight? fontWeight}) {
  String? fontFamily;
  return TextStyle(
    color: color ?? ColorRes.white,
    fontFamily: fontFamily ?? "Poppins-Bold",
    fontWeight: fontWeight ?? FontWeight.bold,
    fontSize: fontSize ?? 14,
    //fontFamily: FontRes.poppinsSemiBold,
    letterSpacing: letterSpacing ?? 0,
  );
}