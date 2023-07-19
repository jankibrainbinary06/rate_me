import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/add_photo_screen/add_photo_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddPhotoScreen(),
    );
  }
}
