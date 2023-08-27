import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';
import 'package:shweluckypro/moneyTransfer/cashExchange.dart';

import '../carouseslider.dart';
import '../localization/controller/appLanguageController.dart';
import '../utils/constants.dart';
import '../utils/global.dart';

class GamePlayScreen extends StatefulWidget {
  const GamePlayScreen({super.key});

  @override
  State<GamePlayScreen> createState() => _GamePlayScreenState();
}

class _GamePlayScreenState extends State<GamePlayScreen> {
  TextEditingController searchController = TextEditingController();
  FocusNode searchFocusNode = FocusNode();
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
                      style: TextStyle(fontSize: 14, color: CustomColor.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      " 0945*****80",
                      style: TextStyle(fontSize: 14, color: CustomColor.white),
                    )
                  ],
                ),
                Spacer(),
                GetBuilder<AppLanguageController>(
                  init: AppLanguageController(),
                  builder: (controller) {
                    languageChoice = controller.appLocale;
                    // String tempValue = controller.appLocale;

                    return IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return AlertDialog(
                                  contentPadding: EdgeInsets.zero,
                                  titleTextStyle: const TextStyle(
                                      fontSize: 20, color: Colors.black),
                                  content: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.35,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, right: 15),
                                          child: Text(
                                            "Please Choice Language".tr,
                                            style:
                                                const TextStyle(fontSize: 18),
                                          ),
                                        ),
                                        RadioListTile(
                                          value: 'my_MM',
                                          title: const Text("မြန်မာ"),
                                          groupValue: languageChoice,
                                          onChanged: (val) {
                                            setState(() {
                                              languageChoice = 'my_MM';
                                            });
                                          },
                                        ),
                                        RadioListTile(
                                          value: 'en_US',
                                          title: const Text("English"),
                                          groupValue: languageChoice,
                                          onChanged: (val) {
                                            setState(() {
                                              languageChoice = 'en_US';
                                            });
                                          },
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 25.0)),
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: const Text("Cancel"),
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 40.0)),
                                              onPressed: () {
                                                controller.changeLanguage(
                                                    languageChoice!);
                                                // controller.changeLanguage(
                                                //     languageChoice!);
                                                Get.updateLocale(
                                                    Locale(languageChoice!));
                                                Global.language =
                                                    languageChoice;
                                                Get.back();
                                              },
                                              child: const Text("Apply"),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                            },
                          );
                        },
                        icon: Icon(
                          Icons.language,
                          color: CustomColor.white,
                          size: 30,
                        ));
                  },
                )
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
                              text: "ဂိမ်းပိုက်ဆံအိတ်(ကျပ်)",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            TextSpan(
                                text: "\n0.00",
                                style: TextStyle(
                                    color: CustomColor.greenReal, fontSize: 16))
                          ])),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 16),
                            child: Icon(Icons.visibility)),
                        SizedBox(
                          width: 25,
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 12),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: CustomColor.greenblue,
                                borderRadius: BorderRadius.circular(6)),
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.033,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.wallet,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "ငွေဖြည့်မည်",
                                    style: TextStyle(
                                        color: CustomColor.white, fontSize: 14),
                                  )
                                ],
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
            height: MediaQuery.of(context).size.height * 0.23,
            child: Container(child: SliverCarouselWidget()),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: DottedBorder(
              radius: Radius.circular(5),
              borderType: BorderType.RRect,
              strokeWidth: 2,
              dashPattern: [4, 3],
              color: CustomColor.yellow,
              child: Container(
                decoration: BoxDecoration(
                    color: CustomColor.greenblue,
                    borderRadius: BorderRadius.circular(5)),
                height: MediaQuery.of(context).size.height * 0.04,
                alignment: Alignment.center,
                child: Marquee(
                  text:
                      "ပိုကာ၊ခြောက်ကောင်ဂျင်၊ရှမ်းကိုးမီး စတဲ့ ရိုးရာဂိမ်းပေါင်းများစွာကို 500ကျပ်မှစတင်ဆော့ကစားပြီး အဆပေါင်းများစွာ ရယူလိုက်ပါ။",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: CustomColor.yellow2,
                      fontSize: 12),

                  scrollAxis: Axis.horizontal,

                  blankSpace: 100.0,
                  velocity: 70.0,
                  // pauseAfterRound: Duration(seconds: 1),
                  startPadding: 10.0,
                  // accelerationDuration: Duration(seconds: 1),
                  accelerationCurve: Curves.linear,
                  // decelerationDuration: Duration(milliseconds: 500),
                  // decelerationCurve: Curves.easeOut,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            margin: EdgeInsets.symmetric(horizontal: 38),
            child: TextFormField(
              controller: searchController,
              focusNode: searchFocusNode,
              decoration: InputDecoration(
                labelText: "ရှာမည်",
                labelStyle: TextStyle(fontSize: 13, color: Colors.grey),
                prefixIcon: Icon(
                  Icons.search,
                  color: CustomColor.greenblue,
                ),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: CustomColor.greenblue,
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: CustomColor.greenblue,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          titleTextStyle: const TextStyle(
                              fontSize: 14, color: Colors.black),
                          content: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.2,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                Container(
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height *
                                      0.047,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: CustomColor.yellow1),
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text(
                                      "အပျော်ဆော့",
                                      style: TextStyle(
                                          color: CustomColor.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height *
                                      0.047,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: CustomColor.greenblue),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return StatefulBuilder(builder:
                                              (BuildContext context,
                                                  StateSetter setState) {
                                            return Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              child: AlertDialog(
                                                contentPadding: EdgeInsets.zero,
                                                titleTextStyle: const TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black),
                                                content: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10,
                                                      vertical: 20),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      InkWell(
                                                          onTap: () {
                                                            Get.back();
                                                          },
                                                          child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Icon(
                                                                Icons
                                                                    .cancel_rounded,
                                                                color:
                                                                    Colors.grey,
                                                              ))),
                                                      Icon(
                                                        Icons.info,
                                                        size: 40,
                                                        color: CustomColor
                                                            .greenblue,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15,
                                                                right: 15),
                                                        child: Text(
                                                          '''သင့် game ပိုက်ဆံအိတ် လက်ကျန်ငွေသည် ၁၀၀၀ ကျပ်အောက်လျော့နည်းနေ ပါသဖြင့် ပင်မပိုက်ဆံအိတ်မှ JILI ဂိမ်းသို့ ငွေလွှဲပေးပါ။'''
                                                              .tr,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 13.3,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 10),
                                                        child: Row(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                  Icons.wallet,
                                                                  color: CustomColor
                                                                      .greenblue,
                                                                ),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  "ပင်မ (ကျပ်)",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12),
                                                                )
                                                              ],
                                                            ),
                                                            Spacer(),
                                                            Text(
                                                              '0',
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 10),
                                                        child: Row(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .monetization_on,
                                                                  color: CustomColor
                                                                      .greenblue,
                                                                ),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  "game (ကျပ်)",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12),
                                                                )
                                                              ],
                                                            ),
                                                            Spacer(),
                                                            Text(
                                                              '0',
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        //  width: double.infinity,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.047,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  backgroundColor:
                                                                      CustomColor
                                                                          .greenblue),
                                                          onPressed: () {
                                                            Get.to(
                                                                CashExchangeScreen());
                                                          },
                                                          child: Text(
                                                            "ငွေလွှဲမည်",
                                                            style: TextStyle(
                                                                color:
                                                                    CustomColor
                                                                        .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          });
                                        },
                                      );
                                    },
                                    child: Text(
                                      "ကစားမည်",
                                      style: TextStyle(
                                          color: CustomColor.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                  },
                );
              },
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/dooro5.jpg"),
                                    fit: BoxFit.cover)),
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text("မိုင်းခွဲသမား",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/dooro5.jpg"),
                                    fit: BoxFit.cover)),
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text("ဘားကရက်",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/dooro5.jpg"),
                                    fit: BoxFit.cover)),
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "ဒိုတာ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ],
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
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          titleTextStyle: const TextStyle(
                              fontSize: 14, color: Colors.black),
                          content: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.2,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                Container(
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height *
                                      0.047,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: CustomColor.yellow1),
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text(
                                      "အပျော်ဆော့",
                                      style: TextStyle(
                                          color: CustomColor.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height *
                                      0.047,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: CustomColor.greenblue),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return StatefulBuilder(builder:
                                              (BuildContext context,
                                                  StateSetter setState) {
                                            return Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              child: AlertDialog(
                                                contentPadding: EdgeInsets.zero,
                                                titleTextStyle: const TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black),
                                                content: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10,
                                                      vertical: 20),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      InkWell(
                                                          onTap: () {
                                                            Get.back();
                                                          },
                                                          child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Icon(
                                                                Icons
                                                                    .cancel_rounded,
                                                                color:
                                                                    Colors.grey,
                                                              ))),
                                                      Icon(
                                                        Icons.info,
                                                        size: 40,
                                                        color: CustomColor
                                                            .greenblue,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15,
                                                                right: 15),
                                                        child: Text(
                                                          '''သင့် game ပိုက်ဆံအိတ် လက်ကျန်ငွေသည် ၁၀၀၀ ကျပ်အောက်လျော့နည်းနေ ပါသဖြင့် ပင်မပိုက်ဆံအိတ်မှ JILI ဂိမ်းသို့ ငွေလွှဲပေးပါ။'''
                                                              .tr,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 13.3,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 10),
                                                        child: Row(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                  Icons.wallet,
                                                                  color: CustomColor
                                                                      .greenblue,
                                                                ),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  "ပင်မ (ကျပ်)",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12),
                                                                )
                                                              ],
                                                            ),
                                                            Spacer(),
                                                            Text(
                                                              '0',
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 10),
                                                        child: Row(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .monetization_on,
                                                                  color: CustomColor
                                                                      .greenblue,
                                                                ),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  "game (ကျပ်)",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12),
                                                                )
                                                              ],
                                                            ),
                                                            Spacer(),
                                                            Text(
                                                              '0',
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        //  width: double.infinity,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.047,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  backgroundColor:
                                                                      CustomColor
                                                                          .greenblue),
                                                          onPressed: () {
                                                            Get.to(
                                                                CashExchangeScreen());
                                                          },
                                                          child: Text(
                                                            "ငွေလွှဲမည်",
                                                            style: TextStyle(
                                                                color:
                                                                    CustomColor
                                                                        .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          });
                                        },
                                      );
                                    },
                                    child: Text(
                                      "ကစားမည်",
                                      style: TextStyle(
                                          color: CustomColor.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                  },
                );
              },
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/dooro4.jpg"),
                                    fit: BoxFit.cover)),
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text("မျောက်မင်းရူလှည့်",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/dooro4.jpg"),
                                    fit: BoxFit.cover)),
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text("မြင်းပြိုင်ပွဲ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/dooro4.jpg"),
                                    fit: BoxFit.cover)),
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "၅ကဒ်ပိုကာ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ],
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
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          titleTextStyle: const TextStyle(
                              fontSize: 14, color: Colors.black),
                          content: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.2,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                Container(
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height *
                                      0.047,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: CustomColor.yellow1),
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text(
                                      "အပျော်ဆော့",
                                      style: TextStyle(
                                          color: CustomColor.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height *
                                      0.047,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: CustomColor.greenblue),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return StatefulBuilder(builder:
                                              (BuildContext context,
                                                  StateSetter setState) {
                                            return Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              child: AlertDialog(
                                                contentPadding: EdgeInsets.zero,
                                                titleTextStyle: const TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black),
                                                content: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10,
                                                      vertical: 20),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      InkWell(
                                                          onTap: () {
                                                            Get.back();
                                                          },
                                                          child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Icon(
                                                                Icons
                                                                    .cancel_rounded,
                                                                color:
                                                                    Colors.grey,
                                                              ))),
                                                      Icon(
                                                        Icons.info,
                                                        size: 40,
                                                        color: CustomColor
                                                            .greenblue,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15,
                                                                right: 15),
                                                        child: Text(
                                                          '''သင့် game ပိုက်ဆံအိတ် လက်ကျန်ငွေသည် ၁၀၀၀ ကျပ်အောက်လျော့နည်းနေ ပါသဖြင့် ပင်မပိုက်ဆံအိတ်မှ JILI ဂိမ်းသို့ ငွေလွှဲပေးပါ။'''
                                                              .tr,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 13.3,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 10),
                                                        child: Row(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                  Icons.wallet,
                                                                  color: CustomColor
                                                                      .greenblue,
                                                                ),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  "ပင်မ (ကျပ်)",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12),
                                                                )
                                                              ],
                                                            ),
                                                            Spacer(),
                                                            Text(
                                                              '0',
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 10),
                                                        child: Row(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .monetization_on,
                                                                  color: CustomColor
                                                                      .greenblue,
                                                                ),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  "game (ကျပ်)",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12),
                                                                )
                                                              ],
                                                            ),
                                                            Spacer(),
                                                            Text(
                                                              '0',
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        //  width: double.infinity,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.047,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  backgroundColor:
                                                                      CustomColor
                                                                          .greenblue),
                                                          onPressed: () {
                                                            Get.to(
                                                                CashExchangeScreen());
                                                          },
                                                          child: Text(
                                                            "ငွေလွှဲမည်",
                                                            style: TextStyle(
                                                                color:
                                                                    CustomColor
                                                                        .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          });
                                        },
                                      );
                                    },
                                    child: Text(
                                      "ကစားမည်",
                                      style: TextStyle(
                                          color: CustomColor.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                  },
                );
              },
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/dooro5.jpg"),
                                    fit: BoxFit.cover)),
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text("7ကြီး 7ငယ်",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/dooro5.jpg"),
                                    fit: BoxFit.cover)),
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text("ကျားနဂါးစစ်ပွဲ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/dooro5.jpg"),
                                    fit: BoxFit.cover)),
                          )),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "21 ချပ်",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ]),
      )),
    );
  }
}
