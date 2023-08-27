import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/screen/login/createPhoneNo.dart';

import '../../utils/constants.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
              height: 80,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: TextFormField(
                controller: nameController,
                focusNode: nameFocusNode,
                decoration: InputDecoration(
                  labelText: "အမည်ထည့်ပါ",
                  labelStyle: TextStyle(fontSize: 12, color: Colors.grey[400]),
                  prefixIcon: Icon(
                    Icons.person,
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
              height: 16,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: TextFormField(
                controller: passwordController,
                focusNode: passwordFocusNode,
                decoration: InputDecoration(
                  labelText: "လျှို့ဝှက်နံပါတ် ဖြည့်ပါ",
                  labelStyle: TextStyle(fontSize: 12, color: Colors.grey[400]),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: CustomColor.yellow1,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off,
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
              height: 16,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: TextFormField(
                controller: confirmPsswordController,
                focusNode: confirmPasswordFocusNode,
                decoration: InputDecoration(
                  labelText: "အတည်ပြုလျှို့ဝှက်နံပါတ် ထည့်ပါ",
                  labelStyle: TextStyle(fontSize: 12, color: Colors.grey[400]),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: CustomColor.yellow1,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off,
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
              height: 16,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "လျှို့ဝှက်နံပါတ်",
                style: TextStyle(fontSize: 14, color: CustomColor.white),
              ),
              TextSpan(
                text: "\n၁။ အကောင့်ဝင်ရန် အသုံးပြုရမည်",
                style: TextStyle(color: CustomColor.white, fontSize: 14),
              ),
              TextSpan(
                text: "\n၂။ ငွေထုတ်ယူရန် အသုံးပြုရမည်",
                style: TextStyle(color: CustomColor.white, fontSize: 14),
              ),
              TextSpan(
                text:
                    "\nအကောင့်လုံခြုံမှုရှိစေရန် သင်၏လျှို့ဝှက်နံပါတ် ကို မည်သူ့ကိုမျှမပြောပါနှင့်။",
                style: TextStyle(color: Colors.red, fontSize: 14),
              ),
            ])),
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
                  Get.to(CreatePhoneNumberScreen());
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
            Center(
              child: Text(
                "မန်ဘာအကောင့်ရှိပြီးသားလား?",
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
                  Get.back();
                },
                child: const Text(
                  "အကောင့်ဝင်ပါ",
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
