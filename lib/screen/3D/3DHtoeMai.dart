import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/screen/3D/3DDream.dart';
import 'package:shweluckypro/screen/3D/3DquickChoose.dart';
import 'package:shweluckypro/screen/3D/opportunity.dart';

import '../../utils/constants.dart';

class ThreeDHtoeMai extends StatefulWidget {
  const ThreeDHtoeMai({super.key});

  @override
  State<ThreeDHtoeMai> createState() => _ThreeDHtoeMaiState();
}

class _ThreeDHtoeMaiState extends State<ThreeDHtoeMai> {
  TextEditingController moneyAmountController = TextEditingController();
  FocusNode moneyAmountFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.07,
          color: Colors.grey.shade300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      surfaceTintColor: CustomColor.greenblue,
                      side: BorderSide(color: CustomColor.greenblue, width: 2)
                      // backgroundColor: CustomColor.greenblue
                      ),
                  onPressed: () {
                    //Get.to(ThreeDHtoeMai());
                  },
                  child: Text(
                    "ဖျက်မည်",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
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
            ],
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
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(7),
              //     color: Colors.grey.shade200,
              //   ),
              //   padding: EdgeInsets.symmetric(horizontal: 16),
              //   width: double.infinity,
              //   child: Text('ငွေပမာဏ: အနည်းဆုံး 100 ကျပ်'),
              // ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.04,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(
                      7,
                    )),
                child: TextFormField(
                  controller: moneyAmountController,
                  focusNode: moneyAmountFocusNode,
                  decoration: InputDecoration(
                    // fillColor: Colors.grey[300],
                    // focusColor: Colors.grey[300],
                    labelText: "ငွေပမာဏ: အနည်းဆုံး 100 ကျပ်",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide: BorderSide(
                        color: CustomColor.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide: BorderSide(
                        color: CustomColor.white,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    _buidThreeDNumber(),
                    SizedBox(
                      width: 5,
                    ),
                    _buidThreeDNumber(),
                    SizedBox(
                      width: 5,
                    ),
                    _buidThreeDNumber(),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () => Get.to(ThreeDDreamScreen()),
                          child: Container(
                            margin: EdgeInsets.only(top: 12),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: CustomColor.greenblue,
                                borderRadius: BorderRadius.circular(5)),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.245,
                              height:
                                  MediaQuery.of(context).size.height * 0.028,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.book,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "အိမ်မက်",
                                    style: TextStyle(
                                        color: CustomColor.white, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.29,
                          // height: MediaQuery.of(context).size.height * 0.028,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: CustomColor.greenblue),
                            onPressed: () {
                              Get.to(ThreeDQuickChoose());
                            },
                            child: Text(
                              "အမြန်ရွေး",
                              style: TextStyle(color: CustomColor.white),
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 3,
                        // ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.29,
                          //height: MediaQuery.of(context).size.height * 0.028,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: CustomColor.greenblue),
                            onPressed: () {
                              Get.to(ThreeDOpportunityScreen());
                            },
                            child: Text(
                              "အခွင့်အရေး",
                              style: TextStyle(color: CustomColor.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.065,
                  width: MediaQuery.of(context).size.width * 0.73,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    //color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TabBar(
                    padding: EdgeInsets.symmetric(horizontal: 2, vertical: 7),
                    unselectedLabelColor: CustomColor.greenblue,

                    labelStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    // labelColor: Colors.green[700],
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: CustomColor.greenblue,
                    ),
                    indicatorColor: CustomColor.white,
                    tabs: [
                      Tab(
                        text: 'ရွေးမည်',
                      ),
                      Tab(
                        text: 'ပတ်လည်',
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(8)),
                width: MediaQuery.of(context).size.width * 0.16,
                height: MediaQuery.of(context).size.height * 0.061,
                child: Center(child: Text("000")),
              )
            ]),
          ),
        ),
      ),
    );
  }

  _buidThreeDNumber() {
    return Container(
      decoration: BoxDecoration(
          color: CustomColor.greenblue,
          border: Border.all(color: CustomColor.yellow, width: 2),
          borderRadius: BorderRadius.circular(5)),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.19,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 7),
            child: Text(
              '9',
              style: TextStyle(fontSize: 30, color: Colors.grey.shade400),
            ),
          ),
          Divider(
            color: Colors.white54,
            thickness: 2,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 1),
            child: Text(
              '0',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Divider(
            color: Colors.white54,
            thickness: 2,
          ),
          Container(
            padding: EdgeInsets.only(bottom: 7),
            child: Text(
              '1',
              style: TextStyle(fontSize: 30, color: Colors.grey.shade400),
            ),
          ),
        ],
      ),
    );
  }
}
