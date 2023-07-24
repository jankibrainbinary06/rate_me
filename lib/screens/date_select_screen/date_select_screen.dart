import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/appBar.dart';
import 'package:rate_me/screens/date_select_screen/date_select_contoller.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/font_res.dart';
import 'package:rate_me/utils/string_res.dart';

class DobScreen extends StatelessWidget {
  DobScreen({super.key});

  final DobController nameController = Get.put(DobController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetRes.dobBg), fit: BoxFit.fill)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.06),
            child: GetBuilder<DobController>(
                id: "date",
                builder: (controller) {
                  return Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.06,
                      ),
                      appbar(),
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                      const Text(
                        StringRes.birthday,
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: FontRes.poppinsRegular,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.datePiker(context);
                                controller.update(["date"]);
                              },
                              child: Row(
                                children: [
                                  controller.selectDate == null
                                      ? const Text(
                                    "DD/",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily:
                                        FontRes.poppinsRegular,
                                        color:
                                        ColorRes.color8E8E8E),
                                  )
                                      : Text(
                                    "${controller.selectDate!.day.toString()}/",
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontFamily:
                                        FontRes.poppinsRegular,
                                        color: Colors.black),
                                  ),
                                  controller.selectDate == null
                                      ? const Text(
                                    "MM/",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily:
                                        FontRes.poppinsRegular,
                                        color:
                                        ColorRes.color8E8E8E),
                                  )
                                      : Text(
                                    "${controller.selectDate!.month.toString()}/",
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontFamily:
                                        FontRes.poppinsRegular,
                                        color: Colors.black),
                                  ),
                                  controller.selectDate == null
                                      ? const Text(
                                    "YYYY",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily:
                                        FontRes.poppinsRegular,
                                        color:
                                        ColorRes.color8E8E8E),
                                  )
                                      : Text(
                                    controller.selectDate!.year.toString(),
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontFamily:
                                        FontRes.poppinsRegular,
                                        color: Colors.black),
                                  ),
                                  Spacer(),
                                  Image.asset(
                                    AssetRes.dropDownIcon,
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.02,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: Get.width,
                              child: const Divider(
                                thickness: 1,
                                color: ColorRes.color8E8E8E,
                              ),
                            ),
                            controller.isValidate == true
                                ? const SizedBox()
                                : const Text(
                              "Please select date of birth ",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily:
                                  FontRes.poppinsRegular,
                                  color: Colors.red),
                            ),
                            SizedBox(
                              height: Get.height * 0.1,
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(30)),
                              elevation: 5,
                              child: GestureDetector(
                                onTap: () async {
                                  controller.validation();
                                  controller.update(["date"]);
                                },
                                child: Container(
                                  height: 45,
                                  // width: 300,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: ColorRes.commonButtonColor,
                                      borderRadius:
                                      BorderRadius.circular(30)),
                                  child: Text(
                                    StringRes.continueText.toUpperCase(),
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontFamily: FontRes.poppinsMedium,
                                        fontWeight: FontWeight.w500,
                                        color: ColorRes.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );


  }
}
