import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/moneyFill/pay.dart';


import '../utils/constants.dart';

class MoneyFillScreen extends StatefulWidget {
  const MoneyFillScreen({super.key});

  @override
  State<MoneyFillScreen> createState() => _MoneyFillScreenState();
}

class _MoneyFillScreenState extends State<MoneyFillScreen> {
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
                  "ငွေဖြည့်မည်",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ))),
        SizedBox(
          height: 16,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "မိမိထည့်လိုသော ဘဏ်အမျိုးအစားကို ရွေးပါ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        InkWell(
          onTap: () => Get.to(PayMoneyScreen()),
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
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Divider(
            thickness: 2,
            color: Colors.black54,
          ),
        )
      ]),
    );
  }
}
