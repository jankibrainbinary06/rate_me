import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/add_photo_screen/add_photo_screen.dart';
import 'package:rate_me/screens/auth/login/login_screen.dart';
import 'package:rate_me/screens/phone_verification/screen/phone_varification_screen.dart';
import 'package:rate_me/screens/walkthrough_video_screen/walkthrough_video_screen.dart';
void main() {

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // status bar color
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: WalkThroughVideoScreen(),
    );
  }
}
