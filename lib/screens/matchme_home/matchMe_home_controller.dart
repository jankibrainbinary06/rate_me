import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../utils/asset_res.dart';

class MarchMeController extends GetxController{

  List nameList = [AssetRes.matchMeProfile,AssetRes.matchMeProfile,AssetRes.matchMeProfile,AssetRes.matchMeProfile,];

  int currentpage = 0;
  PageController  pageController = PageController();

  onpagechanged(int index){
    currentpage = index;
    update(["page_view"]);
  }

}