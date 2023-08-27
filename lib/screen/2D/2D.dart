import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/account/closedDay.dart';
import 'package:shweluckypro/screen/2D/2DHtoemai.dart';
import 'package:shweluckypro/screen/2D/2DRecord.dart';
import 'package:shweluckypro/screen/2D/2DVIP.dart';
import 'package:shweluckypro/screen/2D/2DWinner.dart';
import 'package:shweluckypro/screen/2D/2DClosedDay.dart';

import '../../utils/constants.dart';

class TwoDScreen extends StatefulWidget {
  const TwoDScreen({super.key});

  @override
  State<TwoDScreen> createState() => _TwoDScreenState();
}

class _TwoDScreenState extends State<TwoDScreen> {
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
              showDialog(
                context: context,
                builder: (context) {
                  return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: AlertDialog(
                        contentPadding: EdgeInsets.zero,
                        titleTextStyle:
                            const TextStyle(fontSize: 14, color: Colors.black),
                        content: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.45,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(
                                        Icons.cancel_rounded,
                                        color: Colors.grey,
                                      ))),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Text(
                                  "ကျေးဇူးပြု၍ ထိီထိုးမည့် အချိန်ကိုရွေးပါ".tr,
                                  style: const TextStyle(
                                      fontSize: 13.3,
                                      color: CustomColor.greenblue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                  //  padding: EdgeInsets.only(bottom: 50),
                                  child: Divider()),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: CustomColor.greenblue,
                                        width: 1.5)),
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.045,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(),
                                  onPressed: () {},
                                  child: Text(
                                    "10:30 AM",
                                    style: TextStyle(
                                        color: CustomColor.greenblue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: CustomColor.greenblue,
                                        width: 1.5)),
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.045,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(),
                                  onPressed: () {},
                                  child: Text(
                                    "12:01 PM",
                                    style: TextStyle(
                                        color: CustomColor.greenblue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: CustomColor.greenblue,
                                        width: 1.5)),
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.045,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(),
                                  onPressed: () {},
                                  child: Text(
                                    "02:30 PM",
                                    style: TextStyle(
                                        color: CustomColor.greenblue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: CustomColor.greenblue,
                                        width: 1.5)),
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.045,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(),
                                  onPressed: () {},
                                  child: Text(
                                    "04:30 PM",
                                    style: TextStyle(
                                        color: CustomColor.greenblue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.047,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: CustomColor.greenblue),
                                  onPressed: () {
                                    Get.to(TwoDHtoeMaiScreen());
                                  },
                                  child: Text(
                                    "ထိုးမည်",
                                    style: TextStyle(
                                        color: CustomColor.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
                },
              );
              //  Get.to(TwoDHtoeMai());
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
          Container(
            margin: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.refresh,
              color: CustomColor.yellow1,
            ),
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
                          "00:50:24",
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
              //  margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Get.to(TwoDRecordScreen()),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
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
                    onTap: () => Get.to(TwoDWinnersScreen()),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
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
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: AlertDialog(
                                contentPadding: EdgeInsets.zero,
                                titleTextStyle: const TextStyle(
                                    fontSize: 14, color: Colors.black),
                                content: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.45,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: Align(
                                              alignment: Alignment.topRight,
                                              child: Icon(
                                                Icons.cancel_rounded,
                                                color: Colors.grey,
                                              ))),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, right: 15),
                                        child: Text(
                                          "ကျေးဇူးပြု၍ ထိီထိုးမည့် အချိန်ကိုရွေးပါ"
                                              .tr,
                                          style: const TextStyle(
                                              fontSize: 13.3,
                                              color: CustomColor.greenblue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                          //  padding: EdgeInsets.only(bottom: 50),
                                          child: Divider()),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: CustomColor.greenblue,
                                                width: 1.5)),
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.045,
                                        child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(),
                                          onPressed: () {},
                                          child: Text(
                                            "10:30 AM",
                                            style: TextStyle(
                                                color: CustomColor.greenblue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: CustomColor.greenblue,
                                                width: 1.5)),
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.045,
                                        child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(),
                                          onPressed: () {},
                                          child: Text(
                                            "12:01 PM",
                                            style: TextStyle(
                                                color: CustomColor.greenblue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: CustomColor.greenblue,
                                                width: 1.5)),
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.045,
                                        child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(),
                                          onPressed: () {},
                                          child: Text(
                                            "02:30 PM",
                                            style: TextStyle(
                                                color: CustomColor.greenblue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: CustomColor.greenblue,
                                                width: 1.5)),
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.045,
                                        child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(),
                                          onPressed: () {},
                                          child: Text(
                                            "04:30 PM",
                                            style: TextStyle(
                                                color: CustomColor.greenblue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.047,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  CustomColor.greenblue),
                                          onPressed: () {
                                            Get.to(TwoDVIPPackage());
                                          },
                                          child: Text(
                                            "ထိုးမည်",
                                            style: TextStyle(
                                                color: CustomColor.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
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
                              Icons.add_box_rounded,
                              color: CustomColor.greenblue,
                            ),
                            Text("ပက်ကေ့ချ်"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () => Get.to(ClosedDayScreen()),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
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
                              Icons.calendar_month,
                              color: CustomColor.greenblue,
                            ),
                            Text("ပိတ်ရက်"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "18",
              style: TextStyle(fontSize: 120, color: CustomColor.greenblue),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.history,
                  color: CustomColor.greenblue,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Updated: 19/1/2023 12:01:00 PM",
                  style: TextStyle(color: CustomColor.greenblue),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.04,
              color: CustomColor.greenblue,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Time",
                      style: TextStyle(color: CustomColor.white),
                    ),
                    Text(
                      "Set",
                      style: TextStyle(color: CustomColor.white),
                    ),
                    Text(
                      "Value",
                      style: TextStyle(color: CustomColor.white),
                    ),
                    Text(
                      "2D",
                      style: TextStyle(color: CustomColor.white),
                    ),
                  ]),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              color: CustomColor.pyarnu,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "10:30 AM",
                      style: TextStyle(),
                    ),
                    Text(
                      "1687.02",
                      style: TextStyle(),
                    ),
                    Text(
                      "19373,92",
                      style: TextStyle(),
                    ),
                    Text(
                      "23",
                      style: TextStyle(color: CustomColor.yellow),
                    ),
                  ]),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              color: CustomColor.seinnu,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "12:01 AM",
                      style: TextStyle(),
                    ),
                    Text(
                      "1690.09",
                      style: TextStyle(),
                    ),
                    Text(
                      "29374,03",
                      style: TextStyle(),
                    ),
                    Text(
                      "94",
                      style: TextStyle(color: CustomColor.yellow),
                    ),
                  ]),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              color: CustomColor.pyarnu,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "02:30 PM",
                      style: TextStyle(),
                    ),
                    Text(
                      "--",
                      style: TextStyle(),
                    ),
                    Text(
                      "--",
                      style: TextStyle(),
                    ),
                    Text(
                      "--",
                      style: TextStyle(color: CustomColor.yellow),
                    ),
                  ]),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              color: CustomColor.seinnu,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "04:30 AM",
                      style: TextStyle(),
                    ),
                    Text(
                      "--",
                      style: TextStyle(),
                    ),
                    Text(
                      "--",
                      style: TextStyle(),
                    ),
                    Text(
                      "--",
                      style: TextStyle(color: CustomColor.yellow),
                    ),
                  ]),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.04,
              color: CustomColor.greenblue,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Time",
                      style: TextStyle(color: CustomColor.white),
                    ),
                    Text(
                      "Modern",
                      style: TextStyle(color: CustomColor.white),
                    ),
                    Text(
                      "Internet",
                      style: TextStyle(color: CustomColor.white),
                    ),
                  ]),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              color: CustomColor.pyarnu,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "9:30 AM",
                      style: TextStyle(),
                    ),
                    Text(
                      "98",
                      style: TextStyle(),
                    ),
                    Text(
                      "88",
                      style: TextStyle(),
                    ),
                  ]),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              color: CustomColor.seinnu,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "2:00 PM",
                      style: TextStyle(),
                    ),
                    Text(
                      "--",
                      style: TextStyle(),
                    ),
                    Text(
                      "--",
                      style: TextStyle(),
                    ),
                  ]),
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
