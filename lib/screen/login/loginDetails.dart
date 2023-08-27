import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class LoginDetailsScreen extends StatefulWidget {
  const LoginDetailsScreen({super.key});

  @override
  State<LoginDetailsScreen> createState() => _LoginDetailsScreenState();
}

class _LoginDetailsScreenState extends State<LoginDetailsScreen> {
  TextEditingController phoneController = TextEditingController();
  FocusNode phoneFocusNode = FocusNode();
  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();
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
              "အကောင့်ဝင်ပါ",
              style: TextStyle(
                  fontSize: 20,
                  color: CustomColor.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: TextFormField(
                controller: phoneController,
                focusNode: phoneFocusNode,
                decoration: InputDecoration(
                  labelText: "09458004980",
                  labelStyle: TextStyle(fontSize: 12, color: Colors.grey[400]),
                  prefixIcon: Icon(
                    Icons.phone,
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
                  labelText: "လျှို့ဝှက်နံပါတ်",
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
              height: 5,
            ),
            Align(
                alignment: Alignment.topRight,
                child: Text(
                  "လျှို့ဝှက်နံပါတ် မေ့နေပါသလား?",
                  style: TextStyle(color: CustomColor.white, fontSize: 12),
                )),
            SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.yellow1,
                ),
                onPressed: () {},
                child: const Text(
                  "အကောင့်ဝင်ပါ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ),
            Center(
              child: Text(
                "အကောင့်မရှိသေးဘူးလား?",
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
                  "အကောင့်သစ်ဖွင့်ပါ",
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
            )
          ]),
        ),
      ),
    );
  }
}
