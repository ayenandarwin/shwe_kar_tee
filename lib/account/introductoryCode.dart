import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';

class IntroductoryCodeScreen extends StatefulWidget {
  const IntroductoryCodeScreen({super.key});

  @override
  State<IntroductoryCodeScreen> createState() => _IntroductoryCodeScreenState();
}

class _IntroductoryCodeScreenState extends State<IntroductoryCodeScreen> {
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
              Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Image.asset("assets/dooro1.png")),
              // SizedBox(
              //   height: 16,
              // ),
              Center(
                  child: Text(
                "မိတ်ဆက်ကုဒ်",
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
                  "သင့်အား App ကိုမိတ်ဆက်ပေးသောသူ၏ မိတ်ဆက်\nကုဒ်ကို ဖြည့်ပါ။(သင်၏မိတ်ဆက်ကုဒ်ကို ဖြည့်ရန်\nမဟုတ်ပါ)",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                child: TextFormField(
                  controller: introCodeController,
                  focusNode: introCodeFocusNode,
                  decoration: InputDecoration(
                    labelText: "မိတ်ဆက်ကုဒ်",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.person_add,
                      color: CustomColor.greenblue,
                    ),
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
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.05,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.greenblue),
                  onPressed: () {},
                  child: Text(
                    "အတည်ပြုသည်",
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
