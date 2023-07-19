import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/auth/login/login_screen.dart';
import 'package:rate_me/screens/splash/splash_screen2.dart';
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
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Image.asset(AssetRes.first,fit: BoxFit.cover),
        ),
      ),
    );
  }
}
