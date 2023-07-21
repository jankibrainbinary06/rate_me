



import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rate_me/utils/asset_res.dart';

appbar(){
  return Row(
    children: [
      GestureDetector(
        onTap: (){
          Get.back();
        },
          child: Image.asset(AssetRes.arrowLeft,height: 25,width: 25,)),
      Spacer()
    ],
  );
}