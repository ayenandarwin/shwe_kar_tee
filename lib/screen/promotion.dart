import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:shweluckypro/screen/kanhtoo.dart';
import 'package:shweluckypro/screen/shalhtoe.dart';

import '../utils/constants.dart';

class PromotionScreen extends StatefulWidget {
  const PromotionScreen({super.key});

  @override
  State<PromotionScreen> createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen> {
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
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: GradientBoxBorder(
                    width: 4,
                    gradient: LinearGradient(colors: [
                      CustomColor.darkGreen,
                      CustomColor.green,
                      CustomColor.green1
                    ])),
                //  border: Border.all(color: CustomColor.greenblue, width: 4)
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.52,
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 16),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.21,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/dooro5.jpg"),
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  //  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('''🎉"ကံထူးပျော်ရွှင် သီတင်းကျွတ်အထူးအစီအစဉ်"\n🎉
        
ပထမဆုံးအကြိမ်ငွေသွင်းပြီး 💰အပိုဆုငွေ\n(90,000) ကျပ်အထိ အရယူနိုင်မယ့် အထူး\nအစီအစဉ်လေး လာပါပြီ 🎉'''),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(KanHtooScreen(),
                                transition: Transition.fade,
                                duration: Duration(seconds: 1));
                          },
                          style: ElevatedButton.styleFrom(
                              //foregroundColor: CustomColor.greenblue,
                              backgroundColor: CustomColor.greenblue),
                          child: Container(
                            // margin: EdgeInsets.only(left: 16),

                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("ပို၍ဖတ်ရန်"),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width: MediaQuery.of(context).size.height *
                                        0.03,
                                    //color: CustomColor.darkGreen,
                                    child: Icon(Icons.arrow_forward_ios))
                              ],
                            ),
                          ))),
                )
              ]),
            ),
            Container(
              margin: EdgeInsets.only(right: 16, left: 16, bottom: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: GradientBoxBorder(
                    width: 4,
                    gradient: LinearGradient(colors: [
                      CustomColor.darkGreen,
                      CustomColor.green,
                      CustomColor.green1
                    ])),
                // border: Border.all(color: CustomColor.greenblue, width: 4)
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.52,
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 16),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.248,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/dooro2.png"),
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('''🎉✨ရှယ်ထိုး ရှယ်ထောအလန်းစား ပရိုမိုးရှင်း✨🎉
        
💸ရင်ခုန်ကံစမ်း ဆုငွေလန်းဖို့ 🐅Shwe Tiger မှာ ထီထိုးစို့😉💫'''),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(ShalHtoeScreen(),
                                transition: Transition.fade,
                                duration: Duration(seconds: 1));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColor.greenblue),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("ပို၍ဖတ်ရန်"),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width: MediaQuery.of(context).size.height *
                                        0.03,
                                    child: Icon(Icons.arrow_forward_ios))
                              ],
                            ),
                          ))),
                )
              ]),
            ),
          ]),
        ));
  }
}
