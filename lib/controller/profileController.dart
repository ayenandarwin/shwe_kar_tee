import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/model/profile_category.dart';
import 'package:shweluckypro/utils/constants.dart';

class ProfileController extends GetxController {
 
  RxList categories = [
    ProfileCategory(
        name: " ပရိုဖိုင်",
        icon: Icons.person,
        color1: CustomColor.blueg1,
        color2: CustomColor.blueg2),
    ProfileCategory(name: "အမှတ်\n0 ကျပ်", icon:Icons.star, color1: CustomColor.yel1, color2: CustomColor.yel2),
    ProfileCategory(name: "ဘဏ်အကောင့်", icon:Icons.wallet, color1: CustomColor.purple1, color2: CustomColor.putple2),
    ProfileCategory(
        name: "လျှိုဝှက်နံပါတ်ပြောင်းမယ်",
        icon: Icons.lock,
        color1: CustomColor.pink1,
        color2: CustomColor.pink2),
    ProfileCategory(name: "မှတ်တမ်း", icon: Icons.record_voice_over, color1: CustomColor.orange1, color2: CustomColor.orange2),
    ProfileCategory(name: "ပိတ်ရက်", icon: Icons.calendar_month, color1: CustomColor.awar1, color2: CustomColor.awar2),
    ProfileCategory(name: "ထွက်ဂဏန်း", icon: Icons.numbers, color1: CustomColor.blue1, color2: CustomColor.blue2),
    ProfileCategory(
        name: "မိတ်ဆက်ကုုုုုုုုု", icon: Icons.person_add, color1:CustomColor.mint1, color2: CustomColor.mint2),
    ProfileCategory(name: "အက​ြံပ​ြုမည်", icon: Icons.message, color1: CustomColor.apan1, color2: CustomColor.apan2),
    ProfileCategory(name: "Rating ပေးမည်", icon: Icons.rate_review, color1: CustomColor.apyar1, color2: CustomColor.apyar2),
    ProfileCategory(name: "မျှ​ေဝမည်", icon: Icons.share, color1: CustomColor.asein1, color2:CustomColor.asein2),
    ProfileCategory(name: "ဗားရှင်း 1.0.1", icon: Icons.play_arrow, color1: CustomColor.war1, color2: CustomColor.war2),
    ProfileCategory(
        name: "ဇော်ဂျီပြောင်းမည်", icon: Icons.arrow_right_alt_outlined, color1:CustomColor.pyar1 , color2: CustomColor.pyar2),
    ProfileCategory(name: "စက်ရှင်းမည်", icon: Icons.history, color1: CustomColor.brown1, color2: CustomColor.brown2),
    ProfileCategory(name: "ထွက်မည်", icon: Icons.exit_to_app, color1:CustomColor.ni1, color2: CustomColor.ni2),
  ].obs;
}
