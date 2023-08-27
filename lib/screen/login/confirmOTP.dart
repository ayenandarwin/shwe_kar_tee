import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/screen/login/IntroduceCodeYorN.dart';

import '../../localization/controller/appLanguageController.dart';
import '../../utils/constants.dart';
import '../../utils/global.dart';

class ConfirmOTPScreen extends StatefulWidget {
  const ConfirmOTPScreen({super.key});

  @override
  State<ConfirmOTPScreen> createState() => _ConfirmOTPScreenState();
}

class _ConfirmOTPScreenState extends State<ConfirmOTPScreen> {
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
              height: 100,
            ),
            CircleAvatar(
              maxRadius: 25,
              backgroundColor: CustomColor.greenblue,
              child: Icon(
                Icons.check,
                size: 50,
                color: CustomColor.greenReal,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "OTP စစ်ဆေးပြီးပါပြီ။",
                style: TextStyle(
                  color: CustomColor.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.yellow1,
                ),
                onPressed: () {
                  Get.to(IntroduceCodeYesorNo());
                },
                child: const Text(
                  "ဆက်လုပ်ရန်",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
