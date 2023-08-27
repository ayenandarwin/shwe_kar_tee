import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';
import 'package:shweluckypro/carouseslider.dart';
import 'package:shweluckypro/localization/controller/appLanguageController.dart';
import 'package:shweluckypro/moneyFill/moneyFill.dart';
import 'package:shweluckypro/screen/2D/2D.dart';
import 'package:shweluckypro/screen/3D/3D.dart';
import 'package:shweluckypro/screen/gameplay.dart';
import 'package:shweluckypro/screen/login/login.dart';
import 'package:shweluckypro/screen/login/loginDetails.dart';
import 'package:shweluckypro/screen/vpn.dart';
import 'package:shweluckypro/utils/constants.dart';
import 'package:shweluckypro/utils/global.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 2, vsync: this);
    controller!.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? languageChoice;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                    InkWell(
                      onTap: () => Get.to(LoginScreen()),
                      child: Container(
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
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Center(
                      child: Text(
                        "အကောင့်ဝင်ပါ",
                        style:
                            TextStyle(fontSize: 14, color: CustomColor.white),
                      ),
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
                                      (BuildContext context,
                                          StateSetter setState) {
                                    return AlertDialog(
                                      contentPadding: EdgeInsets.zero,
                                      titleTextStyle: const TextStyle(
                                          fontSize: 20, color: Colors.black),
                                      content: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
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
                                                style: const TextStyle(
                                                    fontSize: 18),
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
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      25.0)),
                                                  onPressed: () {
                                                    Get.back();
                                                  },
                                                  child: const Text("Cancel"),
                                                ),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      40.0)),
                                                  onPressed: () {
                                                    controller.changeLanguage(
                                                        languageChoice!);
                                                    // controller.changeLanguage(
                                                    //     languageChoice!);
                                                    Get.updateLocale(Locale(
                                                        languageChoice!));
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
              // Container(
              //   height: MediaQuery.of(context).size.height * 0.085,
              //   decoration: BoxDecoration(
              //     color: CustomColor.white,
              //     border: Border.all(color: CustomColor.white),
              //     borderRadius: BorderRadius.circular(10),
              //     boxShadow: [
              //       BoxShadow(
              //         color: CustomColor.greenblue,
              //         blurRadius: 3,
              //         spreadRadius: 0.1,
              //         // offset: Offset(2,2)
              //       )
              //     ],
              //   ),
              //   padding: EdgeInsets.symmetric(horizontal: 12),
              //   margin: EdgeInsets.symmetric(horizontal: 16),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Column(
              //         children: [
              //           Row(
              //             children: [
              //               Container(
              //                 margin: EdgeInsets.only(top: 4),
              //                 child: RichText(
              //                     text: TextSpan(children: [
              //                   TextSpan(
              //                     text: "လက်ကျန်ငွေ (ကျပ်)",
              //                     style: TextStyle(
              //                         fontSize: 14, color: Colors.black),
              //                   ),
              //                   TextSpan(
              //                       text: "\n0.00",
              //                       style: TextStyle(
              //                           color: CustomColor.greenReal,
              //                           fontSize: 16))
              //                 ])),
              //               ),
              //               SizedBox(
              //                 width: 5,
              //               ),
              //               Container(
              //                   margin: EdgeInsets.only(bottom: 16),
              //                   child: Icon(Icons.visibility)),
              //               SizedBox(
              //                 width: 40,
              //               ),
              //               InkWell(
              //                 onTap: (() => Get.to(MoneyFillScreen())),
              //                 child: Center(
              //                   child: Container(
              //                     margin: EdgeInsets.only(top: 12),
              //                     padding: EdgeInsets.all(8),
              //                     decoration: BoxDecoration(
              //                         color: CustomColor.greenblue,
              //                         borderRadius: BorderRadius.circular(6)),
              //                     child: Container(
              //                       height: MediaQuery.of(context).size.height *
              //                           0.033,
              //                       child: Row(
              //                         children: [
              //                           Icon(
              //                             Icons.wallet,
              //                             color: Colors.white,
              //                           ),
              //                           SizedBox(
              //                             width: 5,
              //                           ),
              //                           Text(
              //                             "ငွေဖြည့်မည်",
              //                             style: TextStyle(
              //                                 color: CustomColor.white,
              //                                 fontSize: 14),
              //                           )
              //                         ],
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               )
              //             ],
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                margin: EdgeInsets.symmetric(
                  horizontal: 70,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TabBar(
                  padding: EdgeInsets.all(7),
                  unselectedLabelColor: CustomColor.greenblue,
                  labelStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  // labelColor: Colors.green[700],
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CustomColor.greenblue,
                  ),
                  indicatorColor: CustomColor.white,
                  tabs: [
                    Tab(
                      text: 'ကြော်ငြာ',
                    ),
                    Tab(
                      text: 'ထွက်ဂဏန်း',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.23,
                child: TabBarView(children: [
                  Container(child: SliverCarouselWidget()),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16, top: 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: CustomColor.greenblue,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width * 0.8,
                      //   height: 140,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "နောက်ဆုံးထွက် နှစ်လုံးထီ ဂဏန်းများ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: CustomColor.yellow,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "မနက်ပိုင်း (12:01) - 03",
                              style: TextStyle(
                                  fontSize: 16, color: CustomColor.white),
                            ),
                            Text(
                              "ညနေပိုင်း (4:30) - 78",
                              style: TextStyle(
                                  fontSize: 16, color: CustomColor.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Container(
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
                          "မင်္ဂလာပါ Kar Tee မှ ကြိုဆိုပါတယ်။ Kar Tee သည် အလျော်အစား  အမြင့်ဆုံး 2D (95) ဆ၊ 3D (700) ၊ သွပ်ပတ်လည် (10) ဆဖြင့် မြန်ဆန်တိကျသော 24 နာရီပိတ်ရက်မရှိ ဝန်ဆောင်မှုနှင့်အတူ Customer များ၏ အကောင့်လုံခြုံရေးကို 100% အာမခံချက်ပေးထားသည့်အတွက် ယုံကြည်စိတ်ချစွာ အသုံးပြုနိုင်သော 2D,3Dနှင့် Gaming Software ဖြစ်ပါသည်။",
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
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (() => Get.to(LoginDetailsScreen())),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                    image: AssetImage("assets/dooro5.jpg"),
                                    fit: BoxFit.fill)),
                            width: MediaQuery.of(context).size.width * 0.432,
                            height: MediaQuery.of(context).size.height * 0.11,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        InkWell(
                          onTap: (() => Get.to(LoginDetailsScreen())),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                  image: AssetImage("assets/dooro5.jpg"),
                                )),
                            width: MediaQuery.of(context).size.width * 0.432,
                            height: MediaQuery.of(context).size.height * 0.11,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: (() => Get.to(LoginDetailsScreen())),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                  image: AssetImage("assets/dooro4.jpg"),
                                )),
                            width: MediaQuery.of(context).size.width * 0.432,
                            height: MediaQuery.of(context).size.height * 0.11,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        InkWell(
                          onTap: () => Get.to(LoginDetailsScreen()),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                  image: AssetImage("assets/dooro4.jpg"),
                                )),
                            width: MediaQuery.of(context).size.width * 0.432,
                            height: MediaQuery.of(context).size.height * 0.11,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: (() => Get.to(LoginDetailsScreen())),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                  image: AssetImage("assets/dooro5.jpg"),
                                )),
                            width: MediaQuery.of(context).size.width * 0.432,
                            height: MediaQuery.of(context).size.height * 0.11,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        InkWell(
                          onTap: () => Get.to(LoginDetailsScreen()),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                  image: AssetImage("assets/dooro5.jpg"),
                                )),
                            width: MediaQuery.of(context).size.width * 0.432,
                            height: MediaQuery.of(context).size.height * 0.11,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
