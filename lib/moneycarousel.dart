import 'package:carousel_slider/carousel_slider.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:shweluckypro/errorWidget.dart';

import 'controller/carouselController.dart';
import 'model/moneydetail.dart';
import 'utils/constants.dart';

class MoneyCarouselWidget extends ConsumerWidget {
  final CustomCarouselController carouselController =
      Get.put(CustomCarouselController());

  List<MoneyDetails> mDetails = [
    MoneyDetails(
        str1: "ဘယ်လိုငွေဖြည့်ရမလဲ",
        str2: '၁။"ငွေဖြည့်မည်" ကိုနှိပ်ပါ',
        str3:
            "၂။KBZ Pay, Wave Pay, CB Pay နှင့် AYA Pay တို့ဖြင့် ငွေဖြည့်ရန် ဘဏ်အမျိုးအစားကို ရွေးချယ်ပါ။",
        str4: "၃။ငွေဖြည့်မည့်ပမာဏနှင့် လုပ်ငန်းစဉ်နံပါတ်ကို ထည့်ပါ။",
        str5: "၄။'တင်ပြမည်' ကို နှိပ်ပါ"),
    MoneyDetails(
        str1: "ဘယ်လိုငွေထုတ်ရမလဲ",
        str2: '၁။ "ငွေထုတ်မည်" ကိုနှိပ်ပါ"',
        str3: "၂။ လက်ခံဘဏ်အကောင့်ကို ရွေးချယ်ပါ။",
        str4: "၃။ ငွေထုတ်ပမာဏနှင့် သင်၏ Kar Tee အကောင့်၏  စကားဝှက်ကို ထည့်ပါ",
        str5: "၄။ 'တင်ပြမည်' ကို နှိပ်ပါ"),
    MoneyDetails(
        str1: "ဘယ်လိုလွှဲပြောင်းမလဲ",
        str2: "၁။ 'ငွေလွဲမည်' ကိုနှိပ်ပါ ",
        str3: "၂။ သင်လွဲပြောင်းလိုသော ဂိမ်းအမျိုးအစားကို ရွေးချယ်ပါ",
        str4:
            "၃။ လွဲပြောင်းမှုပမာဏနှင့် သင်၏ Kar Tee အကောင့်၏ စကားဝှက်ကို ထည့်ပါ",
        str5: "၄။ 'တင်ပြမည်' ကို နှိပ်ပါ")
  ];

  List<String> photoList = [
    "assets/dooro1.png",
    "assets/dooro2.png",
    "assets/dooro3.png",
    "assets/dooro4.jpg",
    "assets/dooro5.jpg",
  ];

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: GradientBoxBorder(
            width: 5,
            gradient: LinearGradient(colors: [
              CustomColor.darkGreen,
              CustomColor.greenblue,
              // CustomColor.green
            ])),
        // border: Border.all(color: CustomColor.greenblue, width: 5)
      ),
      child: Obx(
        () {
          return Stack(children: [
            CarouselSlider(
              options: CarouselOptions(
                  aspectRatio: 1 / 1.05,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  onPageChanged: (index, _) {
                    carouselController.currentIndex.value = index;
                  }),
              items: mDetails
                  .map(
                    (message) => Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                message.str1,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(message.str2),
                            Text(message.str3),
                            Text(message.str4),
                            Text(message.str5),
                            Container(
                              padding: EdgeInsets.only(bottom: 30),
                              child: Center(
                                child: Container(
                                  margin: EdgeInsets.only(top: 12),
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: CustomColor.greenblue,
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.35,
                                    height: MediaQuery.of(context).size.height *
                                        0.033,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.play_arrow,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "နမူနာကြည့်ရန်",
                                          style: TextStyle(
                                              color: CustomColor.white,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                        // child: FancyShimmerImage(
                        //   imageUrl: photo,
                        //   boxFit: BoxFit.cover,
                        // ),
                        ),
                  )
                  .toList(),
            ),
            Positioned(
              bottom: 5,
              right: 10,
              left: 10,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: mDetails.map(
                    (text) {
                      //these two lines
                      int index = mDetails.indexOf(text); //are changed
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                carouselController.currentIndex.value == index
                                    ? const Color(0xFF006666)
                                    // ? const Color.fromRGBO(246, 121, 12, 0.9)
                                    : const Color(0xFFffcc33)),
                      );
                    },
                  ).toList()),
            ),
          ]);
        },
      ),
    );
  }
}
