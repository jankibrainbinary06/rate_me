



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/utils/asset_res.dart';

appbar(){
  return Row(
    children: [
      InkWell(
        splashFactory: NoSplash.splashFactory,
        onTap: (){
          Get.back();
        },
          child: Image.asset(AssetRes.arrowLeft,height: 25,width: 25,)),
      Spacer()
    ],
  );
}