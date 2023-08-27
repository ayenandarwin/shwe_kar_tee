import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class ThreeDRecordScreen extends StatelessWidget {
  const ThreeDRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          height: 10,
        ),
        Center(
            child: Text(
          "3D မှတ်တမ်း",
          style: TextStyle(
              fontSize: 18,
              // color: CustomColor.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5),
        )),
      ]),
    );
  }
}
