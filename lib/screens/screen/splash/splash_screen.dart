import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/screen/splash/splash_screen2.dart';
import 'package:rate_me/utils/asset_res.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      Get.to(() => const SplashScreen2());
    });
    // TODO: implement initState
    super.initState();
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
