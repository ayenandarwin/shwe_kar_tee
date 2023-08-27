import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/screen/login/createAccount.dart';
import 'package:shweluckypro/screen/login/loginDetails.dart';

import '../../utils/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 100,
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
            height: 230,
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
                Get.to(LoginDetailsScreen());
              },
              child: const Text(
                "အကောင့်ဝင်ပါ",
                style: TextStyle(
                    color: CustomColor.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.yellow1,
              ),
              onPressed: () {
                Get.to(CreateAccountScreen());
              },
              child: const Text(
                "အကောင့်သစ်ဖွင့်ပါ",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
