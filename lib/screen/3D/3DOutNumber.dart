import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class ThreeDOutNumber extends StatelessWidget {
  const ThreeDOutNumber({super.key});

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
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(children: [
              SizedBox(
                height: 16,
              ),
              Center(
                  child: Text(
                "3D ထွက်ဂဏန်း",
                style: TextStyle(
                    fontSize: 18,
                    // color: CustomColor.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              )),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.04,
                color: CustomColor.greenblue,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date",
                        style: TextStyle(color: CustomColor.white),
                      ),
                      Text(
                        "3D",
                        style: TextStyle(color: CustomColor.white),
                      ),
                    ]),
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "17-01-2023",
                          style: TextStyle(),
                        ),
                        Text(
                          "519",
                          style: TextStyle(color: CustomColor.yellow),
                        ),
                      ]),
                ),
              ),
              Card(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "30-12-2022",
                          style: TextStyle(),
                        ),
                        Text(
                          "196",
                          style: TextStyle(color: CustomColor.yellow),
                        ),
                      ]),
                ),
              ),
              Card(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "16-12-2022",
                          style: TextStyle(),
                        ),
                        Text(
                          "093",
                          style: TextStyle(color: CustomColor.yellow),
                        ),
                      ]),
                ),
              ),
              Card(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "01-12-2022",
                          style: TextStyle(),
                        ),
                        Text(
                          "805",
                          style: TextStyle(color: CustomColor.yellow),
                        ),
                      ]),
                ),
              ),
              Card(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "16-11-2022",
                          style: TextStyle(),
                        ),
                        Text(
                          "789",
                          style: TextStyle(color: CustomColor.yellow),
                        ),
                      ]),
                ),
              ),
              Card(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "01-11-2022",
                          style: TextStyle(),
                        ),
                        Text(
                          "106",
                          style: TextStyle(color: CustomColor.yellow),
                        ),
                      ]),
                ),
              ),
              Card(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "16-10-2022",
                          style: TextStyle(),
                        ),
                        Text(
                          "669",
                          style: TextStyle(color: CustomColor.yellow),
                        ),
                      ]),
                ),
              ),
              Card(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "01-10-2022",
                          style: TextStyle(),
                        ),
                        Text(
                          "703",
                          style: TextStyle(color: CustomColor.yellow),
                        ),
                      ]),
                ),
              ),
              Card(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "01-09-2022",
                          style: TextStyle(),
                        ),
                        Text(
                          "332",
                          style: TextStyle(color: CustomColor.yellow),
                        ),
                      ]),
                ),
              ),
              Card(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "16-08-2022",
                          style: TextStyle(),
                        ),
                        Text(
                          "583",
                          style: TextStyle(color: CustomColor.yellow),
                        ),
                      ]),
                ),
              ),
            ])),
      ),
    );
  }
}
