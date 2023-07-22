import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:rate_me/utils/text_style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../utils/colour_res.dart';
import 'hone_controller.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

   HomeController  homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: GetBuilder<HomeController>(
          id: "page_view",
          builder: (controller) {
          return Column(
            children: [
              SizedBox(height: 25,),
              Stack(
                children: [
                  Container(
                    height:Get.height * 0.962,
                    width: Get.width,
                    child: Image.asset(AssetRes.homeSecondBackImg,fit: BoxFit.fill,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 95,),
                      Text(StringRes.matchMe,style: regular(fontSize: 24,fontWeight: FontWeight.w400,color: ColorRes.color8E8E8E),),
                      SizedBox(width: 10,),
                      Container(
                        height: 33,
                        width: 3,
                        color: ColorRes.black,
                      ),
                      SizedBox(width: 10,),
                      Text(StringRes.RateMe,style: regular(fontSize: 24,fontWeight: FontWeight.w400,color: ColorRes.black),),
                      SizedBox(width: 25,),
                      Image.asset(
                        AssetRes.noties,
                        height: 24,
                        width: 24.2,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Padding(
                    padding:  EdgeInsets.only(left: 15,right: 15),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 113,),
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                height: Get.height * 0.572,
                                width: Get.width * 0.862,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(24),
                                    topRight: Radius.circular(24),
                                    bottomLeft: Radius.circular(24),
                                    bottomRight: Radius.circular(24),
                                  ),
                                ),
                                child: PageView.builder(
                                  controller: homeController.pageController,
                                  onPageChanged:homeController.onpagechanged,
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Container(
                                          height: Get.height * 0.572,
                                          width: Get.width * 0.862,
                                          child: Image.asset(homeController.nameList[index],fit: BoxFit.fill,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 15),
                                          child: Column(
                                            children: [
                                              Align(alignment: Alignment.topRight,child: Text("7.7",
                                                style: TextStyle(
                                                    height: 0,
                                                    shadows: [
                                                      Shadow(
                                                        blurRadius: 4,
                                                        offset: Offset(0, 4),
                                                        color: ColorRes.white.withOpacity(0.25),
                                                      )],
                                                    fontSize: 40,fontWeight: FontWeight.w600,fontFamily: "Poppins-Regular",color: ColorRes.white),)),
                                              Align(alignment: Alignment.topRight,child: Text(
                                                StringRes.averageRating,
                                                style: TextStyle(
                                                    shadows: [
                                                      Shadow(
                                                        blurRadius: 4,
                                                        offset: Offset(0, 4),
                                                        color: ColorRes.white.withOpacity(0.25),
                                                      )],
                                                    height: 0,
                                                    fontSize: 12,
                                                    fontFamily: "Poppins-Medium",color: ColorRes.white),
                                              )),
                                            ],
                                          ),
                                        ),
                                        Container(
                                            height: Get.height * 0.070,
                                            width: Get.width * 0.854,
                                            decoration: const BoxDecoration(
                                              color: ColorRes.colorFB96D9,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(24),
                                                bottomRight: Radius.circular(24),
                                              ),),
                                            child:Padding(
                                              padding: EdgeInsets.only(top: 8,bottom: 5,left: 20),
                                              child: Text(
                                                textAlign: TextAlign.left,
                                                StringRes.sherry,
                                                style: TextStyle(fontWeight: FontWeight.bold,color: ColorRes.white,fontSize: 25,fontFamily: "Poppins-Bold",shadows: [
                                                  Shadow(
                                                    blurRadius: 4,
                                                    offset: Offset(0, 4),
                                                    color: ColorRes.white.withOpacity(0.25),
                                                  )
                                                ]),
                                              ),
                                            )),
                                      ],
                                    );
                                  },),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: Get.height * 0.635,
                    left: Get.width * 0.400,
                    child: SmoothPageIndicator(
                      controller: homeController.pageController,  // PageController
                      count: homeController.nameList.length,
                      effect:  WormEffect(
                        dotColor:Color(0xFF000000).withOpacity(0.20),
                        activeDotColor:ColorRes.colorFAA7DE,
                        dotWidth:  14,
                        dotHeight: 14,
                        spacing: 4,
                        strokeWidth: 15,
                        offset: 4,
                      ),  // your preferred effect
                    ),
                  ),
                  Positioned(
                    top: Get.height * 0.780,
                    left: 30,
                    right: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 45,
                          width: 46,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            border: Border.all(color: Colors.white,width: 2),
                          ),
                          child: Center(
                            child: Text("1",style: regular(fontSize: 25),),
                          ),
                        ),

                        Container(
                          height: 45,
                          width: 46,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            border: Border.all(color: Colors.white,width: 2),
                          ),
                          child: Center(
                            child: Text("2",style: regular(fontSize: 25),),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 46,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            border: Border.all(color: Colors.white,width: 2),
                          ),
                          child: Center(
                            child: Text("3",style: regular(fontSize: 25),),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 46,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            border: Border.all(color: Colors.white,width: 2),
                          ),
                          child: Center(
                            child: Text("4",style: regular(fontSize: 25),),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 46,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            border: Border.all(color: Colors.white,width: 2),
                          ),
                          child: Center(
                            child: Text("5",style: regular(fontSize: 25),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          );
        },)
      ),
    );
  }
}
