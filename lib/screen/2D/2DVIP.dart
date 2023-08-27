import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class TwoDVIPPackage extends StatefulWidget {
  const TwoDVIPPackage({super.key});

  @override
  State<TwoDVIPPackage> createState() => _TwoDVIPPackageState();
}

class _TwoDVIPPackageState extends State<TwoDVIPPackage> {
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            "2D VIP ပက်ကေ့ချ်",
            style: TextStyle(
                fontSize: 18,
                // color: CustomColor.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5),
          )),
          SizedBox(
            height: 4,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '''2D VIP Package သည် 2D VIP ထိုးသားများအတွက် အထူးသီးသန့်ဖြစ်ပြီး 95 ဆထိအနိုင်ရရှိမည်ဖြစ်ပါသည်။
      
ကျေးဇူးပြု၍ လောင်းကြေးထည့်ရန် ပက်ကေ့ဂျ်ကို ရွေးချယ်ပါ။''',
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
                color: CustomColor.greenblue,
                borderRadius: BorderRadius.circular(8)),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/dooro1.png",
                        scale: 5,
                      ),
                      Text(
                        "ရွှေ ပက်ကေ့ချ်",
                        style: TextStyle(
                            fontSize: 14,
                            color: CustomColor.yellow,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '''ဂဏန်း 10 ခုအတွက် 10000 \nMMK ဖြင့်လောင်းရန်။

ကဏ္ဍတစ်ခုလျှင် ပက်ကေ့ဂျ် \n10 ခု ရှိပါသည်။
10 ပက်ကေ့ချ် ထိုးပြီးပါပြီ။''',
                        style: TextStyle(
                            fontSize: 12,
                            color: CustomColor.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        // height: MediaQuery.of(context).size.height * 0.05,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColor.white),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(left: 75),
                                            child: Text("Sold Out")),
                                        InkWell(
                                          onTap: () => Get.back(),
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                bottom: 10, left: 20),
                                            child: Align(
                                                alignment: Alignment.topRight,
                                                child: Icon(
                                                  Icons.cancel,
                                                  color: Colors.grey,
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                    titleTextStyle: const TextStyle(
                                        fontSize: 20, color: Colors.black),
                                    content: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.13,
                                      decoration: new BoxDecoration(
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              child: Text(
                                            "၀မ်းနည်းပါတယ်။ ယခုဆက်ရှင်အတွက် ပက်ကေ့ချ်များ ရောင်းကုန်သွားပါပြီ။",
                                            style: TextStyle(fontSize: 12),
                                          )),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    CustomColor.greenblue,
                                              ),
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: Container(
                                                child: Text(
                                                  "ကောင်းပြီ",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "ရောင်းကုန်ပြီ",
                              style: TextStyle(
                                  color: CustomColor.greenblue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ]),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
                color: CustomColor.greenblue,
                borderRadius: BorderRadius.circular(8)),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/dooro1.png",
                        scale: 5,
                      ),
                      Text(
                        "ငွေ ပက်ကေ့ချ်",
                        style: TextStyle(
                            fontSize: 14,
                            color: CustomColor.yellow,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '''ဂဏန်း 10 ခုအတွက် 10000 \nMMK ဖြင့်လောင်းရန်။

ကဏ္ဍတစ်ခုလျှင် ပက်ကေ့ဂျ် \n10 ခု ရှိပါသည်။
10 ပက်ကေ့ချ် ထိုးပြီးပါပြီ။''',
                        style: TextStyle(
                            fontSize: 12,
                            color: CustomColor.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        // height: MediaQuery.of(context).size.height * 0.05,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColor.white),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(left: 75),
                                            child: Text("Sold Out")),
                                        InkWell(
                                          onTap: () => Get.back(),
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                bottom: 10, left: 20),
                                            child: Align(
                                                alignment: Alignment.topRight,
                                                child: Icon(
                                                  Icons.cancel,
                                                  color: Colors.grey,
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                    titleTextStyle: const TextStyle(
                                        fontSize: 20, color: Colors.black),
                                    content: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.13,
                                      decoration: new BoxDecoration(
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              child: Text(
                                            "၀မ်းနည်းပါတယ်။ ယခုဆက်ရှင်အတွက် ပက်ကေ့ချ်များ ရောင်းကုန်သွားပါပြီ။",
                                            style: TextStyle(fontSize: 12),
                                          )),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    CustomColor.greenblue,
                                              ),
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: Container(
                                                child: Text(
                                                  "ကောင်းပြီ",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "ရောင်းကုန်ပြီ",
                              style: TextStyle(
                                  color: CustomColor.greenblue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
