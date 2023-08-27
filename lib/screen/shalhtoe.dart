import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/screen/promotion.dart';

import '../utils/constants.dart';

class ShalHtoeScreen extends StatelessWidget {
  const ShalHtoeScreen({super.key});

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
            onTap: (() => Get.back()),
            child: Icon(
              Icons.arrow_back,
              color: CustomColor.yellow1,
            )),
        backgroundColor: CustomColor.darkGreen,
        elevation: 20,
        flexibleSpace: Container(
          decoration: BoxDecoration(),
        ),
      ),
      body: Column(children: [
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

✅ နေ့စဉ် 2D (95ဆ) \n🔸10 : 30 AM (95ဆ)     🔹12 : 01 PM (80ဆ)   \n🔸02 : 30 PM (95ဆ)     🔹04 : 30 PM (95ဆ)   \n\n✅ 3D အဆ (700) \n\n✅ သွပ်ပတ်လည် (10ဆ) \n\n💯 များများကံစမ်းပြီး မြန်မြန်ထောလိုက်ပါ😉✨✨ \n\n🔻အသေးစိတ်သိရှိလိုပါက  \nmessenger   - m.me/shwetigerapp \nဖုန်းနံပါတ် (or) Viber Ph no - 09980649320 \nTelegram link -@Stiger5819 \n🌐Website တိုက်ရိုက်လင့်ခ် - app.kartee.com'''),
        ),
      ]),
    );
  }
}
