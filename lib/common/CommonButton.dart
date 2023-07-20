import 'package:flutter/material.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/font_res.dart';

 commonButton({
  double? height,
  double? width,
  Color? color,
  onTap,
  String? text,
  radius,
   }){
  Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    elevation: 5,
    child: GestureDetector(
      onTap:onTap,
      child: Container(
        height:  45,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: ColorRes.commonButtonColor,
            borderRadius: BorderRadius.circular(30)
        ),
        child:  Text("$text",style:
        const TextStyle(
            fontSize: 15,
            fontFamily: FontRes.poppinsMedium,
            fontWeight: FontWeight.w500,
            color: ColorRes.white),),
      ),
    ),
  );
}