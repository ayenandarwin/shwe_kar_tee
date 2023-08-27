import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/screen/login/otpVerification.dart';

import '../../localization/controller/appLanguageController.dart';
import '../../utils/constants.dart';
import '../../utils/global.dart';

class CreatePhoneNumberScreen extends StatefulWidget {
  const CreatePhoneNumberScreen({super.key});

  @override
  State<CreatePhoneNumberScreen> createState() =>
      _CreatePhoneNumberScreenState();
}

class _CreatePhoneNumberScreenState extends State<CreatePhoneNumberScreen> {
  TextEditingController phoneController = TextEditingController();
  FocusNode phoneFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    String? languageChoice;
    return Scaffold(
      backgroundColor: CustomColor.bgColor,
      appBar: AppBar(
        title: Text(
          "Kar Tee",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: CustomColor.yellow),
        ),
        centerTitle: true,
        leading: Icon(Icons.menu),
        backgroundColor: CustomColor.darkGreen,
        elevation: 20,
        flexibleSpace: Container(
          decoration: BoxDecoration(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Kar Tee",
                style: TextStyle(
                    fontSize: 50,
                    color: CustomColor.yellow,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              "အကောင့်သစ်ဖွင့်ပါ",
              style: TextStyle(
                  fontSize: 20,
                  color: CustomColor.white,
                  fontWeight: FontWeight.bold),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "မန်ဘာအဖြစ်အကောင့်ဖွင့်ရန် အဆင့်အနည်းငယ် \n                         လိုအပ်ပါသည်။",
                style: TextStyle(
                  color: CustomColor.white,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: TextFormField(
                controller: phoneController,
                focusNode: phoneFocusNode,
                decoration: InputDecoration(
                  labelText: "ဖုန်းနံပါတ် (09*********)",
                  labelStyle: TextStyle(fontSize: 12, color: Colors.grey[400]),
                  prefixIcon: GetBuilder<AppLanguageController>(
                    init: AppLanguageController(),
                    builder: (controller) {
                      languageChoice = controller.appLocale;
                      // String tempValue = controller.appLocale;

                      return IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(builder:
                                    (BuildContext context,
                                        StateSetter setState) {
                                  return AlertDialog(
                                    contentPadding: EdgeInsets.zero,
                                    titleTextStyle: const TextStyle(
                                        fontSize: 20, color: Colors.black),
                                    content: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.35,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, right: 15),
                                            child: Text(
                                              "Please Choice Language".tr,
                                              style:
                                                  const TextStyle(fontSize: 18),
                                            ),
                                          ),
                                          RadioListTile(
                                            value: 'my_MM',
                                            title: const Text("မြန်မာ"),
                                            groupValue: languageChoice,
                                            onChanged: (val) {
                                              setState(() {
                                                languageChoice = 'my_MM';
                                              });
                                            },
                                          ),
                                          RadioListTile(
                                            value: 'en_US',
                                            title: const Text("English"),
                                            groupValue: languageChoice,
                                            onChanged: (val) {
                                              setState(() {
                                                languageChoice = 'en_US';
                                              });
                                            },
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 25.0)),
                                                onPressed: () {
                                                  Get.back();
                                                },
                                                child: const Text("Cancel"),
                                              ),
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 40.0)),
                                                onPressed: () {
                                                  controller.changeLanguage(
                                                      languageChoice!);
                                                  // controller.changeLanguage(
                                                  //     languageChoice!);
                                                  Get.updateLocale(
                                                      Locale(languageChoice!));
                                                  Global.language =
                                                      languageChoice;
                                                  Get.back();
                                                },
                                                child: const Text("Apply"),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                              },
                            );
                          },
                          icon: Icon(
                            Icons.language,
                            color: CustomColor.yellow1,
                            // size: 30,
                          ));
                    },
                  ),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    borderSide: BorderSide(
                      color: CustomColor.yellow1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    borderSide: BorderSide(
                      color: CustomColor.yellow1,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.yellow1,
                ),
                onPressed: () {
                  Get.to(OTPVerificationScreen());
                },
                child: const Text(
                  "OTP ကုဒ်တောင်းမည်",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "အကူအညီလိုပါသလား?",
                style: TextStyle(color: CustomColor.white, fontSize: 12),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/facebook.png",
                  scale: 13,
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/icons/viber.png",
                  scale: 13,
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/icons/telegram.png",
                  scale: 13,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ]),
        ),
      ),
    );
  }
}
