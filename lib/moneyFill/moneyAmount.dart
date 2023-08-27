import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';

class MoneyAmount extends StatefulWidget {
  const MoneyAmount({super.key});

  @override
  State<MoneyAmount> createState() => _MoneyAmountState();
}

class _MoneyAmountState extends State<MoneyAmount> {
  TextEditingController numberController = TextEditingController();
  FocusNode numberFocusNode = FocusNode();
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
            Center(
                child: Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Text(
                      "ငွေတင်မည်",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ))),
            Text("ကျေးဇူးပြု၍ အောက်ပါ Wave Pay အကောင့်သို့ လွှဲပြောင်းပါ။"),

            //margin: EdgeInsets.symmetric(horizontal: 16),
            Card(
              // elevation: 3,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                child: Column(children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("လွှဲငွေပမာဏ : 10,000 ကျပ်")),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      "ယနေ့ငွေလက်ခံမည့်ပမာဏပြည့်သွားပါသဖြင့် တခြားဘဏ်ကို ရွေးပါ။")
                ]),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text("လုပ်ငန်းစဥ်နံပါတ် (နောက်ဆုံး ၆လုံး)")),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.67,
                height: MediaQuery.of(context).size.height * 0.062,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                  7,
                )),
                child: TextFormField(
                  controller: numberController,
                  focusNode: numberFocusNode,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    focusColor: Colors.grey,
                    hintText: "လုပ်ငန်းစဥ်နံပါတ်ကို ထည့်ပါ",
                    hintStyle: TextStyle(fontSize: 13),
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
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.05,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.greenblue),
                onPressed: () {
                  Get.to(MoneyAmount());
                },
                child: Text(
                  "ဆက်လုပ်ရန်",
                  style: TextStyle(color: CustomColor.white),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "အကူအညီရယူလိုပါက အောက်ပါဖုန်းများသို့ ဆက်သွယ်မေးမြန်းနိုင်ပါသည်။",
                  style: TextStyle(fontSize: 16),
                )),
            SizedBox(
              height: 8,
            ),
            Card(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                //color: CustomColor.white,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: CustomColor.white,
                    borderRadius: BorderRadius.circular(10)),

                child: Row(
                  children: [
                    Text("09455078787"),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      width: MediaQuery.of(context).size.width * 0.17,
                      // height: MediaQuery.of(context).size.height * 0.02,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.phone,
                            color: CustomColor.greenblue,
                          ),
                          Text("Phone"),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      width: MediaQuery.of(context).size.width * 0.17,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.phone_bluetooth_speaker_outlined,
                              color: CustomColor.greenblue),
                          Text("Viber"),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      width: MediaQuery.of(context).size.width * 0.17,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.telegram, color: CustomColor.greenblue),
                          Text("Telegram"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
