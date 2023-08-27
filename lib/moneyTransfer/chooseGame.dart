import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';

class ChooseGameScreen extends StatefulWidget {
  const ChooseGameScreen({super.key});

  @override
  State<ChooseGameScreen> createState() => _ChooseGameScreenState();
}

class _ChooseGameScreenState extends State<ChooseGameScreen> {
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          SizedBox(
            height: 16,
          ),
          Center(
            child: Text(
              "ငွေလွဲမည့် ဂိမ်းအမျိုးအစားရွေးပါ။",
              style: TextStyle(fontSize: 16),

              //),
              // onPressed: () {},
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: CustomColor.greenblue,
                borderRadius: BorderRadius.circular(8)),
            padding: EdgeInsets.symmetric(vertical: 3),
            child: ListTile(
                leading: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.12,
                    backgroundColor: CustomColor.yellow,
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: MediaQuery.of(context).size.width * 0.11,
                        child: Image.asset("assets/dooro2.png"))),
                title: Container(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text(
                      "WBET",
                      style: TextStyle(color: CustomColor.white, fontSize: 14),
                    )),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.white),
                  onPressed: () {},
                  child: Text(
                    "Select",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
                color: CustomColor.greenblue,
                borderRadius: BorderRadius.circular(8)),
            padding: EdgeInsets.symmetric(vertical: 3),
            child: ListTile(
                leading: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.12,
                    backgroundColor: CustomColor.yellow,
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: MediaQuery.of(context).size.width * 0.11,
                        child: Image.asset("assets/dooro1.png"))),
                title: Container(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text(
                      "Pragmatic(Slot)",
                      style: TextStyle(color: CustomColor.white, fontSize: 14),
                    )),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.white),
                  onPressed: () {},
                  child: Text(
                    "Select",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
                color: CustomColor.greenblue,
                borderRadius: BorderRadius.circular(8)),
            padding: EdgeInsets.symmetric(vertical: 3),
            child: ListTile(
                leading: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.12,
                    backgroundColor: CustomColor.yellow,
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: MediaQuery.of(context).size.width * 0.11,
                        child: Image.asset("assets/dooro2.png"))),
                title: Container(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text(
                      "JILI",
                      style: TextStyle(color: CustomColor.white, fontSize: 14),
                    )),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.white),
                  onPressed: () {},
                  child: Text(
                    "Select",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
                color: CustomColor.greenblue,
                borderRadius: BorderRadius.circular(8)),
            padding: EdgeInsets.symmetric(vertical: 3),
            child: ListTile(
                leading: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.12,
                    backgroundColor: CustomColor.yellow,
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: MediaQuery.of(context).size.width * 0.11,
                        child: Image.asset("assets/dooro2.png"))),
                title: Container(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text(
                      "CQ9",
                      style: TextStyle(color: CustomColor.white, fontSize: 14),
                    )),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.white),
                  onPressed: () {},
                  child: Text(
                    "Select",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
                color: CustomColor.greenblue,
                borderRadius: BorderRadius.circular(8)),
            padding: EdgeInsets.symmetric(vertical: 3),
            child: ListTile(
                leading: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.12,
                    backgroundColor: CustomColor.yellow,
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: MediaQuery.of(context).size.width * 0.11,
                        child: Image.asset("assets/dooro1.png"))),
                title: Container(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text(
                      "WM Live Casino",
                      style: TextStyle(color: CustomColor.white, fontSize: 14),
                    )),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.white),
                  onPressed: () {},
                  child: Text(
                    "Select",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
                color: CustomColor.greenblue,
                borderRadius: BorderRadius.circular(8)),
            padding: EdgeInsets.symmetric(vertical: 3),
            child: ListTile(
                leading: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.12,
                    backgroundColor: CustomColor.yellow,
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: MediaQuery.of(context).size.width * 0.11,
                        child: Image.asset("assets/dooro2.png"))),
                title: Container(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text(
                      "KINGMAKER",
                      style: TextStyle(color: CustomColor.white, fontSize: 14),
                    )),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.white),
                  onPressed: () {},
                  child: Text(
                    "Select",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
                color: CustomColor.greenblue,
                borderRadius: BorderRadius.circular(8)),
            padding: EdgeInsets.symmetric(vertical: 3),
            child: ListTile(
                leading: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.12,
                    backgroundColor: CustomColor.yellow,
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: MediaQuery.of(context).size.width * 0.11,
                        child: Image.asset("assets/dooro1.png"))),
                title: Container(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text(
                      "BTI SportBook",
                      style: TextStyle(color: CustomColor.white, fontSize: 14),
                    )),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.white),
                  onPressed: () {},
                  child: Text(
                    "Select",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
