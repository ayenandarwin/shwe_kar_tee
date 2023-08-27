import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';

class KanHtooScreen extends StatelessWidget {
  const KanHtooScreen({super.key});

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
      
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 16),
            width: MediaQuery.of(context).size.width * 0.9,
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
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
                '''🎉"ကံထူးပျော်ရွှင် သီတင်းကျွတ်အထူးအစီအစဉ်" 🎉\n💰အပိုဆုငွေကို ဘယ်လိုရယူမလဲ ?\n\nOct 1 ရက်နေ့မှ 31 ရက်နေ့အထိ အကောင့်အသစ်ဖွင့်ပြီး အသုံးပြုမည့် မန်ဘာများ နှင့် ပထမဆုံးအကြိမ် ငွေသွင်းအသုံးပြုမည့် မန်ဘာ တိုင်း ကြိုဆိုဘောနပ် 50% ကို ရရှိမှာ ဖြစ်ပါသည်။\n\n🎉ပရိုမိုးရှင်း စည်းကမ်းချက်များ\n 🔸ပထမဆုံးအကြိမ် ငွေသွင်းသည့် အချိန်မှ စ၍ 1ပတ်အတွင်း သတ်မှတ်ထားသော ထိုးငွေ ပမာဏပြည့်မှသာလျှင် အပိုဆုငွေရရှိမှာ ဖြစ်ပါသည်။\n\n💸10,000 သွင်း 15,000 ရ \n💸30,000 သွင်း 45,000 ရ \n💸60,000 သွင်း 90,000 ရ \n🎉မန်ဘာသစ် ကြိုဆိုဘောနပ် 50% 🎉 \n\n💥 ရှင်းလင်းချက် \n🔸1,000 (သွင်းငွေ) + 500 (ကြိုဆိုဘောနပ်)=1,500 × 10 =15,000 ကျပ် ကို 1 ပတ်အတွင်း ဆော့ကစားရပါမည်။ \n\n💸ထိုးငွေပမာဏ ပြည့်အောင် ဘာတွေ လုပ်ရမလဲ ? \n\n⏱️နေ့စဥ် Shwe Tiger ဆော့ဝဲလ်တွင် 2D3D ၊ ဂိမ်း ၊ ဘောလုံး များဆော့ကစားခြင်းဖြင့် ရယူနိုင်ပါသည်။ \n\n⚠️တစ်ပတ်အတွင်း သတ်မှတ်ထားသော ထိုးငွေပမာဏ မပြည့်မှီပါက ရရှိထားသော point များကို ဆာဗာ မှ အလိုအလျောက် နှုတ်ယူသွားမည် ဖြစ်ပါသည်။ \n\n⛔ဤပရိုမိုးရှင်း အစီအစဉ် ပြီးဆုံးပါက Shwe Tiger မှ ကြိုတင် အသိ‌ပေးအပ်ပါမည်။ \n\n🌟အသေးစိတ်ဆက်သွယ်ရန် \n💬messenger - m.me/shwetigerapp \n☎️ဖုန်းနံပါတ် - 09980649320\n🌐 website တိုက်ရိုက် - app.kartee.com'''),
          ),
        ]),
      ),
    );
  }
}
