import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/screen/3D/3DHtoeMai.dart';
import 'package:shweluckypro/screen/3D/3DOutNumber.dart';
import 'package:shweluckypro/screen/3D/3DRecord.dart';
import 'package:shweluckypro/screen/3D/3DWinner.dart';

import '../../utils/constants.dart';

class ThreeDScreen extends StatefulWidget {
  const ThreeDScreen({super.key});

  @override
  State<ThreeDScreen> createState() => _ThreeDScreenState();
}

class _ThreeDScreenState extends State<ThreeDScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 130),
        child: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.greenblue),
            onPressed: () {
              Get.to(ThreeDHtoeMai());
            },
            child: Text(
              "ထိုးမည်",
              style: TextStyle(color: CustomColor.white),
            ),
          ),
        ),
      ),
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
          Icon(
            Icons.refresh,
            color: CustomColor.yellow1,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.wallet,
                          color: CustomColor.greenblue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("လက်ကျန်ငွေ"),
                      ],
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    Container(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        "0.00 (ကျပ်)",
                        style: TextStyle(color: CustomColor.greenReal),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.lock_clock,
                            color: CustomColor.greenblue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("ပိတ်ရန်ကျန်ချိန်"),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 60,
                        ),
                        child: Text(
                          "12 ရက် 00:50:24",
                          style: TextStyle(color: CustomColor.greenReal),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Get.to(ThreeDRecordScreen()),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: CustomColor.green,
                              blurRadius: 5,
                              spreadRadius: 0.01,
                              // offset: Offset(2,2)
                            )
                          ],
                        ),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.note, color: CustomColor.greenblue),
                              Text(
                                "မှတ်တမ်း",
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () => Get.to(ThreeDWinnersScreen()),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: CustomColor.green,
                            blurRadius: 5,
                            spreadRadius: 0.01,
                            // offset: Offset(2,2)
                          )
                        ],
                      ),
                      child: Card(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: CustomColor.greenblue),
                          Text(
                            "ကံထူးရှင်",
                          ),
                        ],
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () => Get.to(ThreeDOutNumber()),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: CustomColor.green,
                            blurRadius: 5,
                            spreadRadius: 0.01,
                            // offset: Offset(0.5, 0.5)
                          )
                        ],
                      ),
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.note_alt_outlined,
                              color: CustomColor.greenblue,
                            ),
                            Text("ထွက်ဂဏန်း"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                decoration: BoxDecoration(
                    color: CustomColor.pyarnu,
                    borderRadius: BorderRadius.circular(4.5)),
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
                decoration: BoxDecoration(
                    color: CustomColor.pyarnu,
                    borderRadius: BorderRadius.circular(4.5)),
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
                decoration: BoxDecoration(
                    color: CustomColor.pyarnu,
                    borderRadius: BorderRadius.circular(4.5)),
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
                decoration: BoxDecoration(
                    color: CustomColor.pyarnu,
                    borderRadius: BorderRadius.circular(4.5)),
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
                decoration: BoxDecoration(
                    color: CustomColor.pyarnu,
                    borderRadius: BorderRadius.circular(4.5)),
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
                decoration: BoxDecoration(
                    color: CustomColor.pyarnu,
                    borderRadius: BorderRadius.circular(4.5)),
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
                decoration: BoxDecoration(
                    color: CustomColor.pyarnu,
                    borderRadius: BorderRadius.circular(4.5)),
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
                decoration: BoxDecoration(
                    color: CustomColor.pyarnu,
                    borderRadius: BorderRadius.circular(4.5)),
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
                decoration: BoxDecoration(
                    color: CustomColor.pyarnu,
                    borderRadius: BorderRadius.circular(4.5)),
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
                decoration: BoxDecoration(
                    color: CustomColor.pyarnu,
                    borderRadius: BorderRadius.circular(4.5)),
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
            SizedBox(
              height: 16,
            )
          ]),
        ),
      ),
    );
  }
}
