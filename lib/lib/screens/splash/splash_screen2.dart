import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/auth/login/login_screen.dart';
import 'package:rate_me/utils/asset_res.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 2), () {return Get.offAll(() => LoginScreen());},
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 1,
      width: Get.width * 1,
      child:  Image.asset(AssetRes.first,fit: BoxFit.cover),
    );

  }
}
