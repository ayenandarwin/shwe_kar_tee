import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/screen/login/createPhoneNo.dart';
import 'package:shweluckypro/screen/login/successAccount.dart';

import '../../utils/constants.dart';

class IntroduceCodeYesorNo extends StatefulWidget {
  const IntroduceCodeYesorNo({super.key});

  @override
  State<IntroduceCodeYesorNo> createState() => _IntroduceCodeYesorNoState();
}

class _IntroduceCodeYesorNoState extends State<IntroduceCodeYesorNo> {
  TextEditingController nameController = TextEditingController();
  FocusNode nameFocusNode = FocusNode();
  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();
  TextEditingController confirmPsswordController = TextEditingController();
  FocusNode confirmPasswordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
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
              "မိတ်ဆက်ကုဒ် ရှိပါသလား?",
              style: TextStyle(
                  fontSize: 20,
                  color: CustomColor.white,
                  fontWeight: FontWeight.bold),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "မိတ်ဆက်ကုဒ်ကိုဖြည့်ပါ",
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
                controller: nameController,
                focusNode: nameFocusNode,
                decoration: InputDecoration(
                  labelText: "မိတ်ဆက်ကုဒ်ကိုဖြည့်ပါ",
                  labelStyle: TextStyle(fontSize: 12, color: Colors.grey[400]),
                  prefixIcon: Icon(
                    Icons.person_add,
                    color: CustomColor.yellow1,
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
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.yellow1,
                ),
                onPressed: () {
                  Get.to(SuccessAccountScreen());
                },
                child: const Text(
                  "အတည်ပြုသည်",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                "မိတ်ဆက်ကုဒ် မရှိပါ။",
                style: TextStyle(color: CustomColor.white, fontSize: 12),
              ),
            ),
            Container(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 2, color: CustomColor.yellow1)
                    // padding: const EdgeInsets.only(
                    //     left: 70)
                    ),
                onPressed: () {
                  Get.to(SuccessAccountScreen());
                },
                child: const Text(
                  "ကျော်မည်",
                  style: TextStyle(
                      color: CustomColor.yellow1,
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
