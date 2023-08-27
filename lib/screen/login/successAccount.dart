import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/home.dart';

import '../../utils/constants.dart';

class SuccessAccountScreen extends StatelessWidget {
  const SuccessAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.bgColor,
      appBar: AppBar(
        title: Text(
          "Kar Tee",
          style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: CustomColor.yellow),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Get.back(),
          child: Icon(
            Icons.arrow_back,
            color: CustomColor.yellow1,
          ),
        ),
        backgroundColor: CustomColor.darkGreen,
        elevation: 20,
      ),
      body: Column(children: [
        SizedBox(
          height: 190,
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
          height: 10,
        ),
        Text(
          "အကောင့်ဖွင့်ခြင်း အောင်မြင်သည်",
          style: TextStyle(
              fontSize: 20,
              color: CustomColor.white,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomColor.yellow1,
            ),
            onPressed: () {
              Get.to(HomePage());
            },
            child: const Text(
              "ကောင်းပြီ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
          ),
        ),
      ]),
    );
  }
}
