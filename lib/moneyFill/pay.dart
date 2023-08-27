import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/moneyFill/moneyAmount.dart';

import '../utils/constants.dart';

class PayMoneyScreen extends StatefulWidget {
  const PayMoneyScreen({super.key});

  @override
  State<PayMoneyScreen> createState() => _PayMoneyScreenState();
}

class _PayMoneyScreenState extends State<PayMoneyScreen> {
  TextEditingController moneyPayController = TextEditingController();
  FocusNode moneyPayFocusNode = FocusNode();
  var payment;
  var paymentMethod;
  var paymentImage;
  var paymentName;
  var depositList;
  var pandingTopup;
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
                      "ငွေဖြည့်မည်",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
            SizedBox(
              height: 16,
            ),
            Text(
              "မိမိထည့်လိုသော ဘဏ်အမျိုးအစားကို ရွေးပါ",
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
                  // InkWell(
                  //   onTap: () {
                  //     setState(() {
                  //       paymentMethod = payment.id!;
                  //       paymentImage = payment.photo!;
                  //       paymentName = payment.name!;
                  //       if (depositList.length > 0 &&
                  //           depositList[0].status == "Pending") {
                  //         pandingTopup = true;
                  //       } else {
                  //         pandingTopup = false;
                  //       }
                  //     });
                  //   },
                  //   child: Container(
                  //       width: 60,
                  //       height: 60,
                  //       child: CachedNetworkImage(
                  //         color: paymentMethod == payment.id!
                  //             ? Colors.transparent
                  //             : Colors.grey,
                  //         colorBlendMode: paymentMethod == payment.id
                  //             ? BlendMode.multiply
                  //             : BlendMode.saturation,
                  //         imageUrl: payment.photo!,
                  //         fit: BoxFit.cover,
                  //         placeholder: (context, url) => const Center(
                  //             child: const CircularProgressIndicator()),
                  //         errorWidget: (context, url, error) =>
                  //             const Center(child: const Icon(Icons.error)),
                  //       )),
                  // ),
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
            ),
            SizedBox(
              height: 16,
            ),
            Align(alignment: Alignment.topLeft, child: Text("ငွေဖြည့်ပမာဏ")),
            SizedBox(
              height: 8,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.045,
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(
                    7,
                  )),
              child: TextFormField(
                controller: moneyPayController,
                focusNode: moneyPayFocusNode,
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  focusColor: Colors.grey,
                  labelText: "ငွေပမာဏထည့်ပါ",
                  labelStyle: TextStyle(fontSize: 12),
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
            Row(
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
            SizedBox(
              height: 8,
            ),
            Row(
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
          ]),
        ),
      ),
    );
  }
}
