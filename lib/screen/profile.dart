import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/account/account.dart';
import 'package:shweluckypro/account/changePassword.dart';
import 'package:shweluckypro/account/closedDay.dart';
import 'package:shweluckypro/account/introductoryCode.dart';
import 'package:shweluckypro/account/toRecommend.dart';
import 'package:shweluckypro/controller/profileController.dart';
import 'package:shweluckypro/quiz_category_card.dart';
import 'package:shweluckypro/screen/login/login.dart';

import '../account/bankAcc.dart';
import '../account/outNumber.dart';
import '../account/accRecord.dart';
import '../utils/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var categories = Get.put<ProfileController>(ProfileController()).categories;
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
          child: Column(
        children: [
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
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () => Get.to(ProfileAccScreen()),
                      child: Container(
                        child: _buildAccount("ပရိုဖိုင်", Icons.person,
                            CustomColor.blueg1, CustomColor.blueg2),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    _buildAccount("အမှတ် 0 ကျပ်", Icons.star, CustomColor.yel1,
                        CustomColor.yel2),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () => Get.to(BankAccScreen()),
                      child: Container(
                        child: _buildAccount("ဘဏ်အကောင့်", Icons.wallet,
                            CustomColor.purple1, CustomColor.putple2),
                      ),
                    ),
                    // _buildAccount("ဘဏ်အကောင့်", Icons.wallet,
                    //     CustomColor.purple1, CustomColor.putple2),
                    SizedBox(
                      width: 16,
                    ),
                    InkWell(
                      onTap: () => Get.to(ChangePassword()),
                      child: Container(
                        child: _buildAccount("လျှို့ဝှက်နံပါတ်", Icons.lock,
                            CustomColor.pink1, CustomColor.pink2),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () => Get.to(ProfileRecordScreen()),
                      child: Container(
                        child: _buildAccount("မှတ်တမ်း", Icons.note,
                            CustomColor.orange1, CustomColor.orange2),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    InkWell(
                      onTap: () => Get.to(ClosedDayScreen()),
                      child: Container(
                        child: _buildAccount("ပိတ်ရက်", Icons.calendar_month,
                            CustomColor.awar1, CustomColor.awar2),
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
                      onTap: () => Get.to(OutputNumberScreen()),
                      child: Container(
                        child: _buildAccount(
                            "ထွက်ဂဏန်း",
                            Icons.note_alt_outlined,
                            CustomColor.blue1,
                            CustomColor.blue2),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    InkWell(
                      onTap: () => Get.to(IntroductoryCodeScreen()),
                      child: Container(
                        child: _buildAccount("မိတ်ဆက်ကုဒ်", Icons.person_add,
                            CustomColor.mint1, CustomColor.mint2),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () => Get.to(ToRecommendScreen()),
                      child: Container(
                        child: _buildAccount("အကြံပြုမည်", Icons.message,
                            CustomColor.apan1, CustomColor.apan2),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    _buildAccount("Rating ပေးမည်", Icons.rate_review_rounded,
                        CustomColor.apyar1, CustomColor.apyar2),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    _buildAccount("မျှ​​ဝေမည်", Icons.share, CustomColor.asein1,
                        CustomColor.asein2),
                    SizedBox(
                      width: 16,
                    ),
                    _buildAccount("ဗားရှင်း 1.0.1", Icons.play_arrow,
                        CustomColor.war1, CustomColor.war2),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    _buildAccount(
                        "ဇော်ဂျီပြောင်းမည်",
                        // "change zawgyi",
                        Icons.arrow_right_alt_outlined,
                        CustomColor.pyar1,
                        CustomColor.pyar2),
                    SizedBox(
                      width: 16,
                    ),
                    _buildAccount("စက်ရှင်းမည်", Icons.history,
                        CustomColor.brown1, CustomColor.brown2),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: AlertDialog(
                                contentPadding: EdgeInsets.zero,
                                titleTextStyle: const TextStyle(
                                    fontSize: 14, color: Colors.black),
                                content: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.17,
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
                                          "ထွက်ခွာရန်သေချာပါသလား?".tr,
                                          style: const TextStyle(fontSize: 18),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Row(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment.spaceAround,
                                          children: [
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 70)),
                                              onPressed: () {
                                                Get.to(LoginScreen());
                                              },
                                              child: const Text(
                                                "အတည်ပြုသည်",
                                                style: TextStyle(
                                                    color: Colors.red),
                                              ),
                                            ),
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30)),
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: const Text(
                                                "ဖျက်ရန်",
                                                style: TextStyle(
                                                    color:
                                                        CustomColor.greenblue),
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
                    },
                    child: Container(
                      child: Row(
                        children: [
                          _buildAccount("ထွက်မည်", Icons.exit_to_app,
                              CustomColor.ni1, CustomColor.ni2),
                        ],
                      ),
                    ),
                  ),
                ),
              ]))
          // Expanded(
          //   child: GridView.builder(
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //           crossAxisCount: 2),
          //       itemCount: categories.length,
          //       itemBuilder: ((context, index) =>
          //           _buildAccountCard(categories[index]))),
          // ),
        ],
      )),
    );
  }

  _buildAccount(String name, IconData icon, Color color1, Color color2) {
    return Container(
      decoration: BoxDecoration(
        color: color1,
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //       // color: CustomColor.greenblue,
        //       blurRadius: 2,
        //       spreadRadius: 0.1,
        //       offset: Offset(1, 1))
        // ],
      ),
      padding: EdgeInsets.symmetric(vertical: 6),
      width: MediaQuery.of(context).size.width * 0.43,
      height: MediaQuery.of(context).size.height * 0.06,
      child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: CircleAvatar(
                maxRadius: 30,
                backgroundColor: color2,
                child: Icon(
                  icon,
                  size: 30,
                  color: CustomColor.white,
                ),
              ),
            ),
            // SizedBox(
            //   width: 5,
            // ),
            Text(
              name,
              style: TextStyle(
                  color: CustomColor.white,
                  fontSize: 12.5,
                  shadows: <Shadow>[
                    Shadow(
                        offset: Offset(1.5, 1.5),
                        blurRadius: 3.0,
                        color: Colors.black),
                  ]),
            ),
          ]),
    );
  }
}
