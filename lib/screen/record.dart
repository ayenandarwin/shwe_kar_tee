import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../carouseslider.dart';
import '../utils/constants.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({super.key});

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 2, vsync: this);
    controller!.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          flexibleSpace: Container(
            decoration: BoxDecoration(),
          ),
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
        body: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: EdgeInsets.symmetric(
              horizontal: 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: TabBar(
              padding: EdgeInsets.all(7),
              unselectedLabelColor: CustomColor.greenblue,
              labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              // labelColor: Colors.green[700],
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: CustomColor.greenblue,
              ),
              indicatorColor: CustomColor.white,
              tabs: [
                Row(
                  children: [
                    Icon(Icons.wallet),
                    SizedBox(
                      width: 10,
                    ),
                    Tab(
                      text: 'ပင်မပိုက်ဆံအိတ်',
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.monetization_on),
                    SizedBox(
                      width: 10,
                    ),
                    Tab(
                      text: 'ဂိမ်းပိုက်ဆံအိတ်',
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => Center(
                      child: CircularProgressIndicator(
                    color: CustomColor.greenblue,
                  )),
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.33,
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: CustomColor.greenblue),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.monetization_on_outlined,
                              color: CustomColor.white),
                          Text(
                            "ငွေဖြည့်မှတ်တမ်း",
                            style: TextStyle(
                                color: CustomColor.white, fontSize: 12),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () => Center(
                      child: CircularProgressIndicator(
                    color: CustomColor.greenblue,
                  )),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: MediaQuery.of(context).size.height * 0.09,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: CustomColor.greenblue)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.money_off, color: CustomColor.greenblue),
                        Text(
                          "ငွေထုတ်မှတ်တမ်း",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
