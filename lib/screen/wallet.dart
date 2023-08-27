import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/moneycarousel.dart';

import 'package:shweluckypro/screen/record.dart';
import 'package:shweluckypro/utils/constants.dart';
import '../localization/controller/appLanguageController.dart';
import '../moneyFill/moneyFill.dart';
import '../moneyOut/moneyCashOut.dart';
import '../moneyTransfer/moneyTransfer.dart';
import '../utils/global.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  List<String> items = [
    "ငွေဖြည့်မည်",
    "ငွေထုတ်မည်",
    "ငွေလွဲမည်",
  ];
  @override
  Widget build(BuildContext context) {
    String? languageChoice;
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
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: CustomColor.yellow1,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.refresh,
                color: CustomColor.yellow1,
              )),
        ],
        backgroundColor: CustomColor.darkGreen,
        elevation: 20,
        flexibleSpace: Container(
          decoration: BoxDecoration(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          //padding: EdgeInsets.all(16),
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                CustomColor.darkGreen,
                CustomColor.greenblue,
                CustomColor.white,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      maxRadius: 30,
                      backgroundColor: CustomColor.greenblue,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: CustomColor.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Aye Nandar",
                        style:
                            TextStyle(fontSize: 14, color: CustomColor.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        " 0945*****80",
                        style:
                            TextStyle(fontSize: 14, color: CustomColor.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.09,
              decoration: BoxDecoration(
                color: CustomColor.white,
                border: Border.all(color: CustomColor.white),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: CustomColor.greenblue,
                    blurRadius: 3,
                    spreadRadius: 0.1,
                    // offset: Offset(2,2)
                  )
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 12),
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: "လက်ကျန်ငွေ (ကျပ်)",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              TextSpan(
                                  text: "\n0.00",
                                  style: TextStyle(
                                      color: CustomColor.greenReal,
                                      fontSize: 16))
                            ])),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 16),
                              child: Icon(Icons.visibility)),
                          SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () => Get.to(RecordScreen()),
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 12),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: CustomColor.greenblue,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.033,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.note,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "မှတ်တမ်း",
                                        style: TextStyle(
                                            color: CustomColor.white,
                                            fontSize: 14),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Get.to(MoneyFillScreen()),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: CustomColor.green,
                            //     blurRadius: 5,
                            //     spreadRadius: 0.01,
                            //     // offset: Offset(2,2)
                            //   )
                            // ],
                            ),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.wallet, color: CustomColor.greenblue),
                              Text(
                                "ငွေဖြည့်မည်",
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () => Get.to(MoneyOutScreen()),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: CustomColor.green,
                          //     blurRadius: 5,
                          //     spreadRadius: 0.01,
                          //     // offset: Offset(2,2)
                          //   )
                          // ],
                          ),
                      child: Card(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wallet, color: CustomColor.greenblue),
                          Text(
                            "ငွေထုတ်မည်",
                          ),
                        ],
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () => Get.to(MoneyTransferScreen()),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: CustomColor.green,
                          //     blurRadius: 5,
                          //     spreadRadius: 0.01,
                          //     // offset: Offset(0.5, 0.5)
                          //   )
                          // ],
                          ),
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wallet,
                              color: CustomColor.greenblue,
                            ),
                            Text("ငွေလွဲမည်"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // buildWalletCard(),
            // Expanded(
            //   child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: items.length,
            //       itemBuilder: ((context, index) {
            //         return Container(
            //             width: MediaQuery.of(context).size.width * 0.21,
            //             height: MediaQuery.of(context).size.height * 0.1,
            //             child: InkWell(
            //                 onTap: () {},
            //                 child:
            //                     Card(child: Center(child: Text(items[index])))));
            //       })),
            // ),
            SizedBox(
              height: 16,
            ),
            Container(child: MoneyCarouselWidget()),
          ]),
        ),
      ),
    );
  }
}
