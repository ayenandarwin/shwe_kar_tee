import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class TwoDRecordScreen extends StatefulWidget {
  const TwoDRecordScreen({super.key});

  @override
  State<TwoDRecordScreen> createState() => _TwoDRecordScreenState();
}

class _TwoDRecordScreenState extends State<TwoDRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                height: 16,
              ),
              Center(
                child: Text(
                  "မှတ်တမ်း",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              // SizedBox(
              //   height: 16,
              // ),
              Container(
                height: MediaQuery.of(context).size.height * 0.065,
                width: MediaQuery.of(context).size.width * 0.9,
                // margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                padding: EdgeInsets.symmetric(
                  horizontal: 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TabBar(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 7),
                  unselectedLabelColor: CustomColor.greenblue,
                  labelStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  // labelColor: Colors.green[700],
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CustomColor.greenblue,
                  ),
                  indicatorColor: CustomColor.white,
                  tabs: [
                    Row(
                      children: [
                        Icon(Icons.note_alt_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Tab(
                          text: '2D မှတ်တမ်း',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.note_alt_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Tab(
                          text: '2D ထွက်ဂဏန်း',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height,
                child: TabBarView(children: [
                  Container(),
                  Container(
                    child: SingleChildScrollView(
                      child: Column(children: [
                        _buildTabBarViewContainer(),
                        SizedBox(
                          height: 16,
                        ),
                        _buildTabBarViewContainer(),
                        SizedBox(
                          height: 16,
                        ),
                        _buildTabBarViewContainer(),
                        SizedBox(
                          height: 16,
                        ),
                        
                        _buildTabBarViewContainer(),
                        SizedBox(
                          height: 16,
                        ),
                        _buildTabBarViewContainer(),
                        SizedBox(
                          height: 16,
                        ),
                      ]),
                    ),
                  )
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  _buildTabBarViewContainer() {
    return Stack(
      children: [
        Container(
          // width: MediaQuery.of(context).size.width * 0.9,
          // height: MediaQuery.of(context).size.height * 0.2,
          child: Card(
            child: Column(children: [
              // SizedBox(
              //   height: 30,
              // ),
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                decoration: BoxDecoration(
                    color: CustomColor.greenblue,
                    borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.04,
                child: Center(
                  child: Text(
                    "27-01-2023 Friday",
                    style: TextStyle(color: CustomColor.white),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.05,
                      color: CustomColor.greenblue,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Time",
                              style: TextStyle(color: CustomColor.white),
                            ),
                            Text(
                              "Set",
                              style: TextStyle(color: CustomColor.white),
                            ),
                            Text(
                              "Value",
                              style: TextStyle(color: CustomColor.white),
                            ),
                            Text(
                              "2D",
                              style: TextStyle(color: CustomColor.white),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "10:30 AM",
                                style: TextStyle(),
                              ),
                              Text(
                                "1687.02",
                                style: TextStyle(),
                              ),
                              Text(
                                "19373,92",
                                style: TextStyle(),
                              ),
                              Text(
                                "23",
                                style: TextStyle(color: CustomColor.yellow),
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "12:01 AM",
                                style: TextStyle(),
                              ),
                              Text(
                                "1690.09",
                                style: TextStyle(),
                              ),
                              Text(
                                "29374,03",
                                style: TextStyle(),
                              ),
                              Text(
                                "94",
                                style: TextStyle(color: CustomColor.yellow),
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "02:30 PM",
                                style: TextStyle(),
                              ),
                              Text(
                                "--",
                                style: TextStyle(),
                              ),
                              Text(
                                "--",
                                style: TextStyle(),
                              ),
                              Text(
                                "--",
                                style: TextStyle(color: CustomColor.yellow),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "04:30 AM",
                              style: TextStyle(),
                            ),
                            Text(
                              "--",
                              style: TextStyle(),
                            ),
                            Text(
                              "--",
                              style: TextStyle(),
                            ),
                            Text(
                              "--",
                              style: TextStyle(color: CustomColor.yellow),
                            ),
                          ]),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ],
    );
  }
}
