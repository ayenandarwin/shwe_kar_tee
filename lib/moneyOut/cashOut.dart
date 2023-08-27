import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';

class CashOutScreen extends StatefulWidget {
  const CashOutScreen({super.key});

  @override
  State<CashOutScreen> createState() => _CashOutScreenState();
}

class _CashOutScreenState extends State<CashOutScreen> {
  TextEditingController moneyPayController = TextEditingController();
  FocusNode moneyPayFocusNode = FocusNode();
  @override
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Center(
                child: Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Text(
                      "ငွေထုတ်မည်",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
            SizedBox(
              height: 16,
            ),
            Text(
              "ငွေထုတ်မည့် ဘဏ်အကောင့်သတ်မှတ်ပါ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
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
                          Icon(Icons.monetization_on,
                              color: CustomColor.white),
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
            SizedBox(
              height: 16,
            ),
            Text("လက်ကျန်ငွေ 0 ကျပ်"),
            SizedBox(
              height: 16,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text("သင်၏ KBZ Pay အကောင့်ကို ထည့်ပါ")),
            SizedBox(
              height: 8,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.062,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                7,
              )),
              child: TextFormField(
                controller: moneyPayController,
                focusNode: moneyPayFocusNode,
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  focusColor: Colors.grey,
                  labelText: "သင်၏ ဘဏ်အကောင့်အမည် ထည့်ပါ",
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
              height: MediaQuery.of(context).size.height * 0.062,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                7,
              )),
              child: TextFormField(
                controller: moneyPayController,
                focusNode: moneyPayFocusNode,
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  focusColor: Colors.grey,
                  labelText: "သင်၏ ဘဏ်အကောင့်နံပါတ် ထည့်ပါ",
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
              height: MediaQuery.of(context).size.height * 0.062,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                7,
              )),
              child: TextFormField(
                controller: moneyPayController,
                focusNode: moneyPayFocusNode,
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  focusColor: Colors.grey,
                  labelText: "သင်၏ ဘဏ်အကောင့်နံပါတ်ကို နောက်တစ်ကြိမ်ထည့်ပါ",
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
              height: 30,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.greenblue),
                onPressed: () {},
                child: Text(
                  "ဆက်လုပ်ရန်",
                  style: TextStyle(color: CustomColor.white),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
