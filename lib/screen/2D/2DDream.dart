import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/screen/3D/3DHtoeMai.dart';

import '../../utils/constants.dart';

class TwoDDreamScreen extends StatefulWidget {
  const TwoDDreamScreen({super.key});

  @override
  State<TwoDDreamScreen> createState() => _TwoDDreamScreenState();
}

class _TwoDDreamScreenState extends State<TwoDDreamScreen> {
  TextEditingController moneyPayController = TextEditingController();
  FocusNode moneyPayFocusNode = FocusNode();
  TextEditingController searchController = TextEditingController();
  FocusNode searchFocusNode = FocusNode();
  String errorText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Get.snackbar("Alert", "ထိုးမည့်ဂဏန်းရွေးပါ");
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
            // margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
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
                    margin: EdgeInsets.only(bottom: 10, left: 16, right: 16),
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
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: CustomColor.greenblue,
                        borderRadius: BorderRadius.circular(5)),
                    width: MediaQuery.of(context).size.width * 0.18,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Center(
                        child: Text(
                      "000",
                      style: TextStyle(color: CustomColor.white),
                    )),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.67,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        //color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(
                      7,
                    )),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          if (value.isEmpty) {
                            errorText = "ငွေပမာဏ လိုအပ်ပါသည်";
                          }
                        });
                      },
                      controller: moneyPayController,
                      focusNode: moneyPayFocusNode,
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        focusColor: Colors.grey,
                        labelText: "ငွေပမာဏထည့်ပါ",
                        labelStyle: TextStyle(fontSize: 12, color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: CustomColor.greenblue, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: CustomColor.greenblue,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: TextFormField(
                controller: searchController,
                focusNode: searchFocusNode,
                decoration: InputDecoration(
                  labelText: "Search",
                  labelStyle: TextStyle(fontSize: 13, color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.search,
                    color: CustomColor.greenblue,
                  ),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: CustomColor.greenblue,
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: CustomColor.greenblue,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _ThreeTitleCard("သံဘူး", "နဂါး", "မှန်ဘီလူး"),
            Row(
              children: [
                Image.asset(
                  "assets/dooro2.png",
                  width: MediaQuery.of(context).size.width * 0.33,
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Image.asset(
                  "assets/dooro2.png",
                  width: MediaQuery.of(context).size.width * 0.33,
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Image.asset(
                  "assets/dooro2.png",
                  width: MediaQuery.of(context).size.width * 0.33,
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.285,

                    //height: MediaQuery.of(context).size.height * 0.07,
                    //color: Colors.grey.shade300,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 0.5,
                        ),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '000',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '498',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.285,
                    //height: MediaQuery.of(context).size.height * 0.07,
                    //color: Colors.grey.shade300,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 0.5,
                        ),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '000',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '498',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.285,
                    //height: MediaQuery.of(context).size.height * 0.07,
                    //color: Colors.grey.shade300,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 0.5,
                        ),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '000',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '498',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            _ThreeTitleCard("သံဘူး", "နဂါး", "မှန်ဘီလူး"),
            Row(
              children: [
                Image.asset(
                  "assets/dooro2.png",
                  width: MediaQuery.of(context).size.width * 0.33,
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Image.asset(
                  "assets/dooro2.png",
                  width: MediaQuery.of(context).size.width * 0.33,
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Image.asset(
                  "assets/dooro2.png",
                  width: MediaQuery.of(context).size.width * 0.33,
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.285,
                    //height: MediaQuery.of(context).size.height * 0.07,
                    //color: Colors.grey.shade300,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 0.5,
                        ),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '000',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '498',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.285,
                    //height: MediaQuery.of(context).size.height * 0.07,
                    //color: Colors.grey.shade300,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 0.5,
                        ),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '000',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '498',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.285,
                    //height: MediaQuery.of(context).size.height * 0.07,
                    //color: Colors.grey.shade300,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 0.5,
                        ),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '000',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '498',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

  _ThreeTitleCard(String t1, String t2, String t3) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          SizedBox(
            width: 0.5,
          ),
          Container(
            decoration: BoxDecoration(
              color: CustomColor.greenblue,
            ),
            width: MediaQuery.of(context).size.width * 0.285,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Center(
                child: Text(
              t1,
              style: TextStyle(color: CustomColor.white),
            )),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            decoration: BoxDecoration(
              color: CustomColor.greenblue,
            ),
            width: MediaQuery.of(context).size.width * 0.285,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Center(
                child: Text(
              t2,
              style: TextStyle(color: CustomColor.white),
            )),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            decoration: BoxDecoration(
              color: CustomColor.greenblue,
            ),
            width: MediaQuery.of(context).size.width * 0.285,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Center(
                child: Text(
              t3,
              style: TextStyle(color: CustomColor.white),
            )),
          ),
        ],
      ),
    );
  }

  _TwoButtonCard(String text1, String text2) {
    Container(
      // margin: EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      color: Colors.grey.shade300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                surfaceTintColor: Colors.grey,
                // side: BorderSide(color: CustomColor.greenblue, width: 2)
                // backgroundColor: CustomColor.greenblue
              ),
              onPressed: () {
                //Get.to(ThreeDHtoeMai());
              },
              child: Text(
                text1,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () {},
              child: Text(
                text2,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
