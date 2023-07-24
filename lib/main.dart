import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/splash/splash_screen.dart';

import 'screens/add_photo_screen/add_photo_screen.dart';


void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     statusBarColor: Colors.transparent, // status bar color
  //     statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      title: "Rate_me",
    );
  }
}

