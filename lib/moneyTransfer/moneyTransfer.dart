import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:shweluckypro/moneyTransfer/cashExchange.dart';


import '../utils/constants.dart';

class MoneyTransferScreen extends StatefulWidget {
  const MoneyTransferScreen({super.key});

  @override
  State<MoneyTransferScreen> createState() => _MoneyTransferScreenState();
}

class _MoneyTransferScreenState extends State<MoneyTransferScreen> {
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
          onTap: () => Get.back(),
          child: Icon(
            Icons.arrow_back,
            color: CustomColor.yellow1,
          ),
        ),
        backgroundColor: CustomColor.darkGreen,
        elevation: 20,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.refresh,
              color: CustomColor.yellow1,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(),
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            SizedBox(
              height: 16,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.33,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: CustomColor.blueg1,
                      blurRadius: 10,
                      spreadRadius: 0.05,
                      offset: Offset(0, 1))
                ],
              ),
              child: Card(
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.225,
                      //radius: 82,
                      backgroundColor: CustomColor.blueg1,
                      child: Container(
                        // decoration: BoxDecoration(
                        //     color: CustomColor.greenblue,
                        //     border: GradientBoxBorder(
                        //         width: 3,
                        //         gradient: LinearGradient(colors: [
                        //           CustomColor.darkGreen,
                        //           CustomColor.green,
                        //           CustomColor.green1
                        //         ])),
                        // borderRadius: BorderRadius.circular(10)),
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.215,
                          //maxRadius: 78,
                          backgroundColor: CustomColor.greenblue,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "ပင်မပိုက်ဆံအိတ်",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                "ကျပ်",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: CustomColor.yellow,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                color: CustomColor.green,
                                thickness: 1.5,
                              ),
                              Text(
                                "ဂိမ်းပိုက်ဆံအိတ် စုစုပေါင်း",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                "0 ကျပ်",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: CustomColor.yellow,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () => Get.to(CashExchangeScreen()),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.26,
                        //width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                                color: CustomColor.blueg1, width: 2)),
                        child: Container(
                          // style: ElevatedButton.styleFrom(
                          color: CustomColor.greenblue,
                          child: Center(
                            child: Text(
                              "ငွေလွဲမည်",
                              style: TextStyle(
                                  color: CustomColor.white,
                                  fontWeight: FontWeight.bold),

                              //),
                              // onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Card(
              elevation: 3,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3),
                color: CustomColor.seinnu,
                child: ListTile(
                  leading: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.12,
                      backgroundColor: CustomColor.yellow,
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: MediaQuery.of(context).size.width * 0.11,
                          child: Image.asset("assets/dooro2.png"))),
                  title: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "WBET",
                        style: TextStyle(
                            color: CustomColor.greenblue, fontSize: 14),
                      )),
                  trailing: Text(
                    "0 ကျပ်",
                    style: TextStyle(
                        color: CustomColor.greenReal,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 2,
            // ),
            Card(
              elevation: 3,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3),
                color: CustomColor.pyarnu,
                child: ListTile(
                  leading: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.12,
                      backgroundColor: CustomColor.yellow,
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: MediaQuery.of(context).size.width * 0.11,
                          child: Image.asset("assets/dooro1.png"))),
                  title: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Pragmatic(Slot)",
                        style: TextStyle(
                            color: CustomColor.greenblue, fontSize: 14),
                      )),
                  trailing: Text(
                    "0 ကျပ်",
                    style: TextStyle(
                        color: CustomColor.greenReal,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3),
                color: CustomColor.seinnu,
                child: ListTile(
                  leading: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.12,
                      backgroundColor: CustomColor.yellow,
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: MediaQuery.of(context).size.width * 0.11,
                          child: Image.asset("assets/dooro2.png"))),
                  title: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "JILI",
                        style: TextStyle(
                            color: CustomColor.greenblue, fontSize: 14),
                      )),
                  trailing: Text(
                    "0 ကျပ်",
                    style: TextStyle(
                        color: CustomColor.greenReal,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 2,
            // ),
            Card(
              elevation: 3,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3),
                color: CustomColor.pyarnu,
                child: ListTile(
                  leading: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.12,
                      backgroundColor: CustomColor.yellow,
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: MediaQuery.of(context).size.width * 0.11,
                          child: Image.asset("assets/dooro2.png"))),
                  title: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "CQ9",
                        style: TextStyle(
                            color: CustomColor.greenblue, fontSize: 14),
                      )),
                  trailing: Text(
                    "0 ကျပ်",
                    style: TextStyle(
                        color: CustomColor.greenReal,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3),
                color: CustomColor.seinnu,
                child: ListTile(
                  leading: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.12,
                      backgroundColor: CustomColor.yellow,
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: MediaQuery.of(context).size.width * 0.11,
                          child: Image.asset("assets/dooro1.png"))),
                  title: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "WM Live Casino",
                        style: TextStyle(
                            color: CustomColor.greenblue, fontSize: 14),
                      )),
                  trailing: Text(
                    "0 ကျပ်",
                    style: TextStyle(
                        color: CustomColor.greenReal,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 2,
            // ),
            Card(
              elevation: 3,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3),
                color: CustomColor.pyarnu,
                child: ListTile(
                  leading: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.12,
                      backgroundColor: CustomColor.yellow,
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: MediaQuery.of(context).size.width * 0.11,
                          child: Image.asset("assets/dooro2.png"))),
                  title: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "KINGMAKER",
                        style: TextStyle(
                            color: CustomColor.greenblue, fontSize: 14),
                      )),
                  trailing: Text(
                    "0 ကျပ်",
                    style: TextStyle(
                        color: CustomColor.greenReal,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3),
                color: CustomColor.seinnu,
                child: ListTile(
                  leading: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.12,
                      backgroundColor: CustomColor.yellow,
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: MediaQuery.of(context).size.width * 0.11,
                          child: Image.asset("assets/dooro1.png"))),
                  title: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "BTI SportBook",
                        style: TextStyle(
                            color: CustomColor.greenblue, fontSize: 14),
                      )),
                  trailing: Text(
                    "0 ကျပ်",
                    style: TextStyle(
                        color: CustomColor.greenReal,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
