import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/phone_verification/screen/phone_verificetion_controller.dart';

final PhoneVerificationController controller =
    Get.put(PhoneVerificationController());

showCountryDiloage(context) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: GetBuilder<PhoneVerificationController>(
            id: "country",
            builder:(contollerGet){
              return Container(
                height: Get.height * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                  child: ListView.builder(
                      itemCount: contollerGet.allCountries.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Get.width * 0.05,
                              vertical: Get.height * 0.01),
                          child: GestureDetector(
                            onTap: () {
                              contollerGet.countriesCode = controller.allCountries[index]["code"]!;
                              contollerGet.countriesDileCode = controller.allCountries[index]["dial_code"]!;
                              Get.back();
                              print(" =========> ${contollerGet.countriesCode}");
                              print(" =========> ${contollerGet.countriesDileCode}");
                              contollerGet.update(["country"]);
                            },
                            child: Container(
                              height: Get.height * 0.05,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey, width: 0.5))),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: Get.width * 0.16,
                                    child: Text(
                                      contollerGet.allCountries[index]["dial_code"]
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.02,
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.37,
                                    height: Get.height * 0.04,
                                    child: Text(
                                      contollerGet.allCountries[index]["name"]
                                          .toString(),
                                      overflow: TextOverflow.fade,
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: Get.width * 0.08,
                                    child: Text(
                                      contollerGet.allCountries[index]["code"]
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              );
            }
          ),
        );
      });
}
