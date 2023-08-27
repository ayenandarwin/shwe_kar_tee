import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/screen/2D/2DDream.dart';

import '../../utils/constants.dart';

class TwoDHtoeMaiScreen extends StatefulWidget {
  const TwoDHtoeMaiScreen({super.key});

  @override
  State<TwoDHtoeMaiScreen> createState() => _TwoDHtoeMaiScreenState();
}

class _TwoDHtoeMaiScreenState extends State<TwoDHtoeMaiScreen> {
  TextEditingController moneyPayController = TextEditingController();
  FocusNode moneyPayFocusNode = FocusNode();
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
                  //  Get.to(ThreeDHtoeMai());
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {}, //Get.to(ThreeDDreamScreen()),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                      decoration: BoxDecoration(
                          color: CustomColor.greenblue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        height: MediaQuery.of(context).size.height * 0.026,
                        child: Row(
                          children: [
                            Text(
                              "04:30 PM",
                              style: TextStyle(
                                  color: CustomColor.white, fontSize: 14),
                            ),
                            // SizedBox(
                            //   width: 1,
                            // ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.24,
                    // height: MediaQuery.of(context).size.height * 0.028,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColor.greenblue),
                      onPressed: () {
                        showDialog(
                          useSafeArea: true,
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Container(
                                // color: CustomColor.greenblue,
                                // height: MediaQuery.of(context).size.height,
                                child: AlertDialog(
                                  scrollable: true,
                                  contentPadding: EdgeInsets.zero,
                                  titleTextStyle: const TextStyle(
                                      fontSize: 14, color: Colors.black),
                                  content: SingleChildScrollView(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 20),
                                      child: Column(
                                        //mainAxisSize: MainAxisSize.min,
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.spaceAround,
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

                                          _TwoDTenCard(
                                              'ဘရိတ်',
                                              '0/10',
                                              '1/11',
                                              '2/12',
                                              '3/13',
                                              '4/14',
                                              '5/15',
                                              '6/16',
                                              '7/17',
                                              '8/18',
                                              '9/19'),
                                          SizedBox(
                                            height: 10,
                                          ),

                                          _TwoDTenCard(
                                              'Single & Double Size',
                                              'ညီအကို',
                                              'ကြီး',
                                              'ငယ်',
                                              'မ',
                                              'စုံ',
                                              'စုံစုံ',
                                              'စုံမ',
                                              'မစုံ',
                                              'မမ',
                                              'အပူး'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          _TwoDTenCard(
                                              'ပတ်သီး',
                                              '0',
                                              '1',
                                              '2',
                                              '3',
                                              '4',
                                              '5',
                                              '6',
                                              '7',
                                              '8',
                                              '9'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          _TwoDTenCard(
                                              'ထိပ်',
                                              '0',
                                              '1',
                                              '2',
                                              '3',
                                              '4',
                                              '5',
                                              '6',
                                              '7',
                                              '8',
                                              '9'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          _TwoDTenCard(
                                              'နောက်',
                                              '0',
                                              '1',
                                              '2',
                                              '3',
                                              '4',
                                              '5',
                                              '6',
                                              '7',
                                              '8',
                                              '9'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'နက္ခတ် ပါဝါ'.tr,
                                                style: const TextStyle(
                                                  fontSize: 13.3,
                                                  color: CustomColor.greenblue,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          _TwoDPower(
                                              'မြန်မာနက္ခတ် 07,18,24,35,69'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          _TwoDPower(
                                              'မြန်မာနက္ခတ် R 70,81,42,53,96'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          _TwoDPower('ပါဝါ 05,27,38,49'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          _TwoDPower('ပါဝါ R 50,72,83,94'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          _TwoDPower(
                                              'ထိုင်းနက္ခတ် 07,19,23,48,56'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          _TwoDPower(
                                              'ထိုင်းနက္ခတ် R 70,91,32,84,65'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          _TwoDPower(
                                              'ထိုင်းပါဝါ 09,13,26,47,58'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          _TwoDPower(
                                              'ထိုင်းပါဝါ R 90,31,62,74,85'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                '20 လုံးစီ'.tr,
                                                style: const TextStyle(
                                                  fontSize: 13.3,
                                                  color: CustomColor.greenblue,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          _TwoDFiveCard(
                                            '20 လုံးစီ',
                                            '00-\n19',
                                            '20-\n39',
                                            '40-\n59',
                                            '60-\n79',
                                            '80-\n99',
                                          ),

                                          // Container(
                                          //   width: double.infinity,
                                          //   height: MediaQuery.of(context)
                                          //           .size
                                          //           .height *
                                          //       0.047,
                                          //   child: ElevatedButton(
                                          //     style: ElevatedButton.styleFrom(
                                          //         backgroundColor:
                                          //             CustomColor.greenblue),
                                          //     onPressed: () {
                                          //       // Get.to(TwoDVIPPackage());
                                          //     },
                                          //     child: Text(
                                          //       "ထိုးမည်",
                                          //       style: TextStyle(
                                          //           color: CustomColor.white,
                                          //           fontWeight: FontWeight.bold),
                                          //     ),
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                          },
                        );
                        // Get.to(ThreeDQuickChoose());
                      },
                      child: Text(
                        "အမြန်ရွေး",
                        style:
                            TextStyle(color: CustomColor.white, fontSize: 12),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 3,
                  // ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.27,
                    //height: MediaQuery.of(context).size.height * 0.028,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          surfaceTintColor: CustomColor.greenblue,
                          side:
                              BorderSide(color: CustomColor.greenblue, width: 2)
                          //backgroundColor: CustomColor.greenblue,

                          ),
                      onPressed: () {
                        Get.snackbar("Alert", "ထိုးမည့်ဂဏန်းရွေးပါ" ,
                            snackPosition: SnackPosition.BOTTOM,
                            // icon: Center(
                            //     child: Icon(
                            //   Icons.error,
                            //   color: Colors.red,
                            // )),
                            colorText: Colors.red,
                            
                            backgroundColor: Colors.yellow,
                            margin: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 8),
                            animationDuration: Duration(milliseconds: 300),
                            boxShadows: [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(1, 1),
                                blurRadius: 10,
                              )
                            ]);

                        // Get.to(ThreeDOpportunityScreen());
                      },
                      child: Text(
                        "ပတ်လည်",
                        style: TextStyle(
                            color: CustomColor.greenblue, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (() => Get.to(TwoDDreamScreen())),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Container(
                      //margin: EdgeInsets.only(top: 12),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: CustomColor.greenblue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        height: MediaQuery.of(context).size.height * 0.03,
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
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                          //color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(
                        7,
                      )),
                      child: TextFormField(
                        controller: moneyPayController,
                        focusNode: moneyPayFocusNode,
                        decoration: InputDecoration(
                          fillColor: Colors.grey,
                          focusColor: Colors.grey,
                          labelText: "ငွေပမာဏ: အနည်းဆုံး 100 ကျပ်",
                          labelStyle:
                              TextStyle(fontSize: 12, color: Colors.grey),
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
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 13,
                    child: Icon(Icons.question_mark),
                    backgroundColor: CustomColor.greenblue,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'အရောင်ရှင်းလင်းချက်',
                    style: TextStyle(color: CustomColor.greenblue),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _TwoDCard('01', '02', '03', '04'),
            SizedBox(
              height: 8,
            ),
            _TwoDCard('05', '06', '07', '08'),
            SizedBox(
              height: 8,
            ),
            _TwoDCard('09', '10', '11', '12'),
            SizedBox(
              height: 8,
            ),
            _TwoDCard('13', '14', '15', '16'),
            SizedBox(
              height: 8,
            ),
            _TwoDCard('01', '02', '03', '04'),
            SizedBox(
              height: 8,
            ),
            _TwoDCard('05', '06', '07', '08'),
            SizedBox(
              height: 8,
            ),
            _TwoDCard('09', '10', '11', '12'),
            SizedBox(
              height: 8,
            ),
            _TwoDCard('13', '14', '15', '16'),
          ],
        )),
      ),
    );
  }

  _TwoDCard(String num1, num2, num3, num4) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(8)),
            width: MediaQuery.of(context).size.width * 0.12,
            height: MediaQuery.of(context).size.height * 0.055,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(child: Text(num1)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // border: Border(
                    //     left: BorderSide(color: Colors.green, width: 2
                    //     )
                    //     )
                  ),
                  child: Divider(
                    color: CustomColor.white,
                    thickness: 3,
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(8)),
            width: MediaQuery.of(context).size.width * 0.12,
            height: MediaQuery.of(context).size.height * 0.055,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(child: Text(num2)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // border: Border(
                    //     left: BorderSide(color: Colors.green, width: 2
                    //     )
                    //     )
                  ),
                  child: Divider(
                    color: CustomColor.white,
                    thickness: 3,
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(8)),
            width: MediaQuery.of(context).size.width * 0.12,
            height: MediaQuery.of(context).size.height * 0.055,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(child: Text(num3)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // border: Border(
                    //     left: BorderSide(color: Colors.green, width: 2
                    //     )
                    //     )
                  ),
                  child: Divider(
                    color: CustomColor.white,
                    thickness: 3,
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(8)),
            width: MediaQuery.of(context).size.width * 0.12,
            height: MediaQuery.of(context).size.height * 0.055,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(child: Text(num4)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // border: Border(
                    //     left: BorderSide(color: Colors.green, width: 2
                    //     )
                    //     )
                  ),
                  child: Divider(
                    color: CustomColor.white,
                    thickness: 3,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _TwoDTenCard(String text, num1, num2, num3, num4, num5, num6, num7, num8,
      num9, num10) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              text.tr,
              style: const TextStyle(
                fontSize: 13.3,
                color: CustomColor.greenblue,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num1,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num2,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num3,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num4,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num5,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num6,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num7,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num8,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num9,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num10,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  _TwoDFiveCard(
    String text,
    num1,
    num2,
    num3,
    num4,
    num5,
  ) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              text.tr,
              style: const TextStyle(
                fontSize: 13.3,
                color: CustomColor.greenblue,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num1,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num2,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num3,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num4,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                        child: Text(
                      num5,
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  _TwoDPower(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(8)),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.04,
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontSize: 12),
      )),
    );
  }
}
