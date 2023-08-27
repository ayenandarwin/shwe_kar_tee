import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class TwoDClosed extends StatefulWidget {
  const TwoDClosed({super.key});

  @override
  State<TwoDClosed> createState() => _TwoDClosedState();
}

class _TwoDClosedState extends State<TwoDClosed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kar Tee",
          style: TextStyle(
              fontSize: 25,
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
        flexibleSpace: Container(
          decoration: BoxDecoration(),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.refresh,
              color: CustomColor.yellow1,
            ),
          )
        ],
      ),
      body: Column(children: [
        SizedBox(
          height: 16,
        ),
        Center(
          child: Icon(
            Icons.cancel,
            size: 100,
            color: CustomColor.greenblue,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text('စနေ တနင်္ဂနွေ ထီပိတ်ပါသည်။')
      ]),
    );
  }
}
