import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/moneyOut/cashOut.dart';

import '../utils/constants.dart';

class MoneyOutScreen extends StatefulWidget {
  const MoneyOutScreen({super.key});

  @override
  State<MoneyOutScreen> createState() => _MoneyOutScreenState();
}

class _MoneyOutScreenState extends State<MoneyOutScreen> {
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
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Center(
            child: Container(
                margin: EdgeInsets.only(top: 16),
                child: Text(
                  "ငွေထုတ်မည်",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ))),
        SizedBox(
          height: 16,
        ),
        Text(
          "ငွေထုတ်မည့်ဘဏ်အကောင့်သတ်မှတ်ပါ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 16,
        ),
        InkWell(
          onTap: (() {
            showDialog(
              context: context,
              builder: (context) {
                return StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      titleTextStyle:
                          const TextStyle(fontSize: 14, color: Colors.black),
                      content: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.3,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.cancel,
                                  color: CustomColor.greenblue,
                                )),
                            Icon(
                              Icons.wallet,
                              color: CustomColor.greenblue,
                              size: 50,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "သင်၏ဘဏ်အကောင့် ထည့်ရန် လိုအပ်ပါသည်။".tr,
                                style: const TextStyle(fontSize: 15),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8),
                              child: Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.32,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          side: BorderSide(
                                              width: 2,
                                              color: CustomColor.yellow2)
                                          // padding: const EdgeInsets.only(
                                          //     left: 70)
                                          ),
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: const Text(
                                        "ပိတ်ရန်",
                                        style: TextStyle(
                                            color: CustomColor.greenblue),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.32,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: CustomColor.greenblue,
                                        
                                      ),
                                      onPressed: () {
                                        Get.to(CashOutScreen());
                                      },
                                      child: const Text(
                                        "ထည့်မည်",
                                        style:
                                            TextStyle(color: CustomColor.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                });
              },
            );
          }),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.only(left: 12, top: 9, bottom: 9),
            decoration: BoxDecoration(
                color: CustomColor.darkGreen,
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.19,
                    height: MediaQuery.of(context).size.height * 0.075,
                    decoration: BoxDecoration(
                        border: Border.all(color: CustomColor.white),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.monetization_on, color: CustomColor.white),
                        Text(
                          "KBZ Pay",
                          style: TextStyle(color: CustomColor.white),
                        ),
                      ],
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.19,
                  height: MediaQuery.of(context).size.height * 0.075,
                  decoration: BoxDecoration(
                      border: Border.all(color: CustomColor.white),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.waves_outlined, color: CustomColor.white),
                      Text(
                        "wavepay",
                        style: TextStyle(color: CustomColor.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.19,
                  height: MediaQuery.of(context).size.height * 0.075,
                  decoration: BoxDecoration(
                      border: Border.all(color: CustomColor.white),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.monetization_on,
                        color: CustomColor.white,
                      ),
                      // Text(
                      //   "wavepay",
                      //   style: TextStyle(color: CustomColor.white),
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.19,
                  height: MediaQuery.of(context).size.height * 0.075,
                  decoration: BoxDecoration(
                      border: Border.all(color: CustomColor.white),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.monetization_on,
                        color: CustomColor.white,
                      ),
                      //  Text("ပိတ်ရက်"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text("လက်ကျန်ငွေ 0 ကျပ်"),
        SizedBox(
          height: 16,
        ),
      ]),
    );
  }
}
