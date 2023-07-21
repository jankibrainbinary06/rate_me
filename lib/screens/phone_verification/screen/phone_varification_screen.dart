import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/phone_verification/screen/Widget.dart';
import 'package:rate_me/screens/phone_verification/screen/phone_verificetion_controller.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/font_res.dart';
import 'package:rate_me/utils/string_res.dart';

class PhoneVerificationScreen extends StatelessWidget {
  PhoneVerificationScreen({super.key});

  final PhoneVerificationController phoneVerificationController =
      Get.put(PhoneVerificationController());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Stack(
          children: [
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: Image.asset(
                AssetRes.phoneBg,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: Scaffold(
                  resizeToAvoidBottomInset: true,
                  backgroundColor: Colors.transparent,
                  body: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Get.height * 0.03,
                      ),
                      child: GetBuilder<PhoneVerificationController>(
                          id: "country",
                          builder: (contoller) {
                            return SingleChildScrollView(
                              physics: NeverScrollableScrollPhysics(),
                              child: Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: Get.height * 0.02,
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          splashFactory: NoSplash.splashFactory,
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: Image.asset(
                                            AssetRes.arrowLeft,
                                            width: 26,
                                          ),
                                        ),
                                        const Spacer(),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.05,
                                    ),
                                    const Text(
                                      StringRes.myPhone,
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: FontRes.poppinsRegular,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.07,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: Get.height * 0.01,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  showCountryDiloage(context);
                                                },
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height:
                                                          Get.height * 0.063,
                                                      width: Get.width * 0.26,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: const BoxDecoration(
                                                          border: Border(
                                                              bottom: BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 0.7))),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            contoller.countriesCode ==
                                                                    ""
                                                                ? "US"
                                                                : contoller
                                                                    .countriesCode,
                                                            style: const TextStyle(
                                                                fontSize: 16,
                                                                fontFamily: FontRes
                                                                    .poppinsRegular,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          SizedBox(
                                                            width: Get.width *
                                                                0.01,
                                                          ),
                                                          Text(
                                                            contoller.countriesDileCode ==
                                                                    ""
                                                                ? "+1"
                                                                : contoller
                                                                    .countriesDileCode,
                                                            style: const TextStyle(
                                                                fontSize: 16,
                                                                fontFamily: FontRes
                                                                    .poppinsRegular,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          SizedBox(
                                                            width: Get.width *
                                                                0.015,
                                                          ),
                                                          Image.asset(
                                                            AssetRes
                                                                .dropDownIcon,
                                                            height: 15,
                                                            width: 15,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: Get.height * 0.02,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: Get.width * 0.05,
                                              ),
                                              SizedBox(
                                                width: Get.width * 0.53,
                                                height: Get.height * 0.12,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    TextFormField(
                                                      controller: contoller
                                                          .phoneController,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      onChanged: (value) {
                                                        if (value.isEmpty) {
                                                          contoller.isValidate =
                                                              false;
                                                        } else {
                                                          contoller.isValidate =
                                                              true;
                                                        }
                                                        contoller.update(
                                                            ["country"]);
                                                      },
                                                      style: const TextStyle(
                                                          fontFamily: FontRes
                                                              .poppinsRegular,
                                                          fontSize: 16),
                                                      decoration:
                                                           InputDecoration(
                                                        hintText:
                                                            "Phone Number",
                                                        hintStyle: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: FontRes
                                                                .poppinsRegular,
                                                            color: ColorRes
                                                                .color8E8E8E),
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                top:Get
                                                                    .height *
                                                           0.013 ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          Get.height * 0.005,
                                                    ),
                                                    contoller.isValidate == true
                                                        ? SizedBox()
                                                        : Text(
                                                            "Please enter phone number ",
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontFamily: FontRes
                                                                    .poppinsRegular,
                                                                color:
                                                                    Colors.red),
                                                          )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: Get.height * 0.04,
                                          ),
                                          SizedBox(
                                            width: Get.width * 0.84,
                                            child: const Text(
                                              StringRes.whenYou,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily:
                                                      FontRes.poppinsRegular,
                                                  color: ColorRes.color8C8C8C),
                                            ),
                                          ),
                                          SizedBox(
                                            height: Get.height * 0.01,
                                          ),
                                          InkWell(
                                            splashFactory:
                                                NoSplash.splashFactory,
                                            onTap: () {},
                                            child: SizedBox(
                                              width: Get.width * 0.84,
                                              child: const Text(
                                                StringRes.learnWhat,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontFamily:
                                                        FontRes.poppinsRegular,
                                                    fontWeight: FontWeight.w500,
                                                    color:
                                                        ColorRes.color606060),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: Get.height * 0.04,
                                          ),
                                          Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            elevation: 5,
                                            child: GestureDetector(
                                              onTap: () {
                                                return contoller.validation(
                                                    contoller
                                                        .phoneController.text);
                                              },
                                              child: Container(
                                                height: 45,
                                                width: 300,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: ColorRes
                                                        .commonButtonColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)),
                                                child: Text(
                                                  StringRes.verify
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                      fontSize: 15,
                                                      fontFamily:
                                                          FontRes.poppinsMedium,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: ColorRes.white),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ),
              ),
            )
          ],
        ))
      ],
    );
  }
}
