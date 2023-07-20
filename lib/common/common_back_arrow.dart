import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/utils/colour_res.dart';

class CommonBackArrow extends StatelessWidget {
  const CommonBackArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding:EdgeInsets.only(left: Get.width * 0.05,top: Get.width * 0.03),
      child:  const Row(
        children: [
          Icon(
            Icons.arrow_back,
            color: ColorRes.color8E8E8E,
            size: 28,
          ),
        ],
      ),
    );
  }
}
