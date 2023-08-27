import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';

class ToRecommendScreen extends StatefulWidget {
  const ToRecommendScreen({super.key});

  @override
  State<ToRecommendScreen> createState() => _ToRecommendScreenState();
}

class _ToRecommendScreenState extends State<ToRecommendScreen> {
  TextEditingController introCodeController = TextEditingController();
  FocusNode introCodeFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: 30,
              ),

              // SizedBox(
              //   height: 16,
              // ),
              Center(
                  child: Text(
                "အကြံပြုရန်",
                style: TextStyle(
                    fontSize: 18,
                    // color: CustomColor.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              )),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '''သင့်တွင် အကြံပြုလိုသောအချက် သို့မဟုတ် အဆင်မပြေမှုတစ်စုံတစ်ရာရှိပါသလား?
အောက်ဖော်ပြပါ ဖောင်တွင်‌ရေးသား ပေးပို့နိုင်ပါသည်။''',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(alignment: Alignment.topLeft, child: Text("အကြောင်းအရာ")),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                child: TextFormField(
                  controller: introCodeController,
                  focusNode: introCodeFocusNode,
                  decoration: InputDecoration(
                    labelText: "အကြောင်းအရာ",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.grey),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide: BorderSide(
                          // color: CustomColor.yellow1,
                          ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide: BorderSide(
                          //color: CustomColor.yellow1,
                          // width: 2.0,
                          ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Align(alignment: Alignment.topLeft, child: Text("အသေးစိတ်")),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                // padding: EdgeInsets.only(bottom: 100),
                child: TextFormField(
                  controller: introCodeController,
                  focusNode: introCodeFocusNode,
                  maxLines: 11,
                  decoration: InputDecoration(
                    hintText: "အသေးစိတ်",
                    hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide: BorderSide(
                          // color: CustomColor.yellow1,
                          ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide: BorderSide(
                          //color: CustomColor.yellow1,
                          // width: 2.0,
                          ),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 16,
              // ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.05,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.greenblue),
                  onPressed: () {},
                  child: Text(
                    "ပို့ရန်",
                    style: TextStyle(
                        color: CustomColor.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}
