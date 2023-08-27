import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/utils/constants.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController oldPasswordController = TextEditingController();
  FocusNode oldPasswordFocusNode = FocusNode();
  TextEditingController newPasswordController = TextEditingController();
  FocusNode newPasswordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.bgColor,
      appBar: AppBar(
        title: Text(
          "Kar Tee",
          style: TextStyle(
              fontSize: 23,
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
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
              "လျှို့ဝှက်နံပါတ် ပြောင်းမည်",
              style: TextStyle(
                  fontSize: 18,
                  color: CustomColor.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5),
            )),
            SizedBox(
              height: 88,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: TextFormField(
                controller: oldPasswordController,
                focusNode: oldPasswordFocusNode,
                decoration: InputDecoration(
                  labelText: "လျှို့ဝှက်နံပါတ်အဟောင်း",
                  labelStyle: TextStyle(fontSize: 12, color: Colors.grey[400]),
                  prefixIcon: Icon(
                    Icons.lock_outlined,
                    color: CustomColor.yellow1,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: CustomColor.yellow1,
                  ),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    borderSide: BorderSide(
                      color: CustomColor.yellow1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    borderSide: BorderSide(
                      color: CustomColor.yellow1,
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
              height: MediaQuery.of(context).size.height * 0.05,
              child: TextFormField(
                controller: newPasswordController,
                focusNode: newPasswordFocusNode,
                decoration: InputDecoration(
                  labelText: "စကားဝှက်အသစ်တစ်ခုရိုက်ထည့်ပါ",
                  labelStyle: TextStyle(fontSize: 12, color: Colors.grey[400]),
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: CustomColor.yellow1,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: CustomColor.yellow1,
                  ),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    borderSide: BorderSide(
                      color: CustomColor.yellow1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    borderSide: BorderSide(
                      color: CustomColor.yellow1,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "ကျေးဇူးပြု၍ စကားဝှက်အသစ်ကို နောက်တစ်ကြိမ်ရိုက်ထည့်ပါ။",
              style: TextStyle(color: CustomColor.white, fontSize: 12),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: TextFormField(
                controller: newPasswordController,
                focusNode: newPasswordFocusNode,
                decoration: InputDecoration(
                  labelText: "အတည်ပြုလျှို့ဝှက်နံပါတ် ထည့်ပါ",
                  labelStyle: TextStyle(fontSize: 12, color: Colors.grey[400]),
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: CustomColor.yellow1,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: CustomColor.yellow1,
                  ),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    borderSide: BorderSide(
                      color: CustomColor.yellow1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    borderSide: BorderSide(
                      color: CustomColor.yellow1,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "လျှို့ဝှက်နံပါတ် မေ့နေပါသလား?",
                style: TextStyle(color: CustomColor.white, fontSize: 12),
              ),
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "လျှို့ဝှက်နံပါတ်",
                style: TextStyle(fontSize: 14, color: CustomColor.white),
              ),
              TextSpan(
                text: "\n၁။ အကောင့်ဝင်ရန် အသုံးပြုရမည်",
                style: TextStyle(color: CustomColor.white, fontSize: 14),
              ),
              TextSpan(
                text: "\n၂။ ငွေထုတ်ယူရန် အသုံးပြုရမည်",
                style: TextStyle(color: CustomColor.white, fontSize: 14),
              ),
              TextSpan(
                text:
                    "\nအကောင့်လုံခြုံမှုရှိစေရန် သင်၏လျှို့ဝှက်နံပါတ် ကို မည်သူ့ကိုမျှမပြောပါနှင့်။",
                style: TextStyle(color: Colors.red, fontSize: 14),
              ),
            ])),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.05,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.yellow1),
                onPressed: () {},
                child: Text(
                  "ပြောင်းမည်",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "အကူအညီလိုပါသလား?",
                style: TextStyle(color: CustomColor.white),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/facebook.png",
                  scale: 13,
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/icons/viber.png",
                  scale: 13,
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/icons/telegram.png",
                  scale: 13,
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
