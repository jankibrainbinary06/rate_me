import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rate_me/utils/asset_res.dart';

class HomeController extends GetxController{

  List nameList = [AssetRes.homeProfileImg,AssetRes.homeProfileImg,AssetRes.homeProfileImg,AssetRes.homeProfileImg,];

  int currentpage = 0;
  PageController  pageController = PageController();

  onpagechanged(int index){
      currentpage = index;
      update(["page_view"]);
  }
}
