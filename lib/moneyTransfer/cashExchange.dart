import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/moneyTransfer/chooseGame.dart';

import '../utils/constants.dart';

class CashExchangeScreen extends StatefulWidget {
  const CashExchangeScreen({super.key});

  @override
  State<CashExchangeScreen> createState() => _CashExchangeScreenState();
}

class _CashExchangeScreenState extends State<CashExchangeScreen> {
  TextEditingController cashExchangeController = TextEditingController();
  FocusNode cashExchangeFocusNode = FocusNode();
  List items = [];
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
        child: Column(children: [
          Center(
              child: Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text(
                    "ပိုက်ဆံအိတ်လွှဲပြောင်းခြင်း",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ))),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "ပင်မပိုက်ဆံအိတ်မှ ဂိမ်းပိုက်ဆံအိတ်သို့",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 25, left: 8),
                            child: Icon(
                              Icons.wallet,
                              color: CustomColor.greenblue,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(right: 16, top: 8, bottom: 8),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: "ပင်မပိုက်ဆံအိတ်",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                              TextSpan(
                                  text: "\n0 ကျပ်",
                                  style: TextStyle(
                                      color: CustomColor.greenReal,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))
                            ])),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.currency_exchange,
                      color: CustomColor.greenblue,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Card(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 25, left: 8),
                            child: Icon(
                              Icons.wallet,
                              color: CustomColor.greenblue,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(right: 20, top: 16, bottom: 12),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: "KINGMAKER",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                              TextSpan(
                                  text: "\n0 ကျပ်",
                                  style: TextStyle(
                                      color: CustomColor.greenReal,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))
                            ])),
                          ),
                          InkWell(
                            onTap: (() => Get.to(ChooseGameScreen())),
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: CustomColor.greenblue,
                            ),
                          )
                          // DropdownButton(items: items, onChanged: onChanged)
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    // Container(
                    //   padding: EdgeInsets.only(right: 30),
                    //   child: Text(
                    //     "0.00 (ကျပ်)",
                    //     style: TextStyle(color: CustomColor.greenReal),
                    //   ),
                    // )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            height: MediaQuery.of(context).size.height * 0.062,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
              7,
            )),
            child: TextFormField(
              controller: cashExchangeController,
              focusNode: cashExchangeFocusNode,
              decoration: InputDecoration(
                fillColor: Colors.grey,
                focusColor: Colors.grey,
                labelText: "ငွေလွှဲပမာဏထည့်ပါ",
                suffix: Text("(MMK)"),
                labelStyle: TextStyle(fontSize: 13),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: CustomColor.greenblue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: CustomColor.greenblue,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    // Container(
                    //     padding:
                    //         EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                    //     decoration: BoxDecoration(
                    //         color: CustomColor.greenblue,
                    //         border: Border.all(),
                    //         borderRadius: BorderRadius.circular(8)),
                    //     child: Text(
                    //       "1000",
                    //       style: TextStyle(color: CustomColor.white),
                    //     ));
                  },
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "1,000",
                        style: TextStyle(),
                      )),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "10,000",
                      style: TextStyle(),
                    )),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "50,000",
                      style: TextStyle(),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    // Container(
                    //     padding:
                    //         EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                    //     decoration: BoxDecoration(
                    //         color: CustomColor.greenblue,
                    //         border: Border.all(),
                    //         borderRadius: BorderRadius.circular(8)),
                    //     child: Text(
                    //       "1000",
                    //       style: TextStyle(color: CustomColor.white),
                    //     ));
                  },
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 22.5, vertical: 12),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "100,000",
                        style: TextStyle(),
                      )),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "200,000",
                      style: TextStyle(),
                    )),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 27, vertical: 12),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "500,000",
                      style: TextStyle(),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            height: MediaQuery.of(context).size.height * 0.062,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
              7,
            )),
            child: TextFormField(
              controller: cashExchangeController,
              focusNode: cashExchangeFocusNode,
              decoration: InputDecoration(
                fillColor: Colors.grey,
                focusColor: Colors.grey,
                labelText: "လော့အင် လျှို့ဝှက်နံပါတ်ထည့်ပါ",
                suffixIcon: Icon(Icons.visibility),
                labelStyle: TextStyle(fontSize: 13),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: CustomColor.greenblue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: CustomColor.greenblue,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.greenblue),
              onPressed: () {},
              child: Text(
                "တင်ပြမည်",
                style: TextStyle(color: CustomColor.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
