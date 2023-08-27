import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../utils/constants.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
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
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: CustomColor.yellow1,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.refresh,
                color: CustomColor.yellow1,
              )),
        ],
        backgroundColor: CustomColor.darkGreen,
        elevation: 20,
        flexibleSpace: Container(
          decoration: BoxDecoration(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 16,
          ),
          _buildOneRow("တိုင်ကြားရန်", "09450680000"),
          _buildTwoRow("Customer Service", "09980649320", "09987456456"),
          _buildOneRow("ငွေဖြည့်/ ငွေထုတ် အကူအညီယူရန်", "09940567455"),
          _buildTwoRow("Customer Service", "09980649320", "09987456456"),
          _buildBotRow("ကျွန်ုပ်တို့ကို ဆက်သွယ်ပါ", "Bot Channel")
        ]),
      ),
    );
  }

  _buildOneRow(String text1, String text2) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
          color: CustomColor.greenblue,
          border: GradientBoxBorder(
              width: 3,
              gradient: LinearGradient(colors: [
                CustomColor.darkGreen,
                CustomColor.green,
                CustomColor.green1
              ])),
          borderRadius: BorderRadius.circular(10)),
      height: MediaQuery.of(context).size.height * 0.15,
      child: Column(children: [
        Text(
          text1,
          style:
              TextStyle(color: CustomColor.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          //color: CustomColor.white,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: CustomColor.white,
              borderRadius: BorderRadius.circular(10)),

          child: Row(
            children: [
              Text(text2),
              SizedBox(
                width: 7,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.17,
                // height: MediaQuery.of(context).size.height * 0.02,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.phone,
                        color: CustomColor.greenblue,
                      ),
                      Text("Phone"),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.17,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.phone_bluetooth_speaker_outlined,
                          color: CustomColor.greenblue),
                      Text("Viber"),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.17,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.telegram, color: CustomColor.greenblue),
                      Text("Telegram"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }

  _buildTwoRow(String text1, String text2, String text3) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
          color: CustomColor.greenblue,
          border: GradientBoxBorder(
              width: 3,
              gradient: LinearGradient(colors: [
                CustomColor.darkGreen,
                CustomColor.green,
                CustomColor.green1
              ])),
          borderRadius: BorderRadius.circular(10)),
      height: MediaQuery.of(context).size.height * 0.24,
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            text1,
            style: TextStyle(
                color: CustomColor.white,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          //color: CustomColor.white,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: CustomColor.white,
              borderRadius: BorderRadius.circular(10)),

          child: Row(
            children: [
              Text(text2),
              SizedBox(
                width: 7,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.17,
                // height: MediaQuery.of(context).size.height * 0.02,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.phone, color: CustomColor.greenblue),
                      Text("Phone"),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.17,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.phone_bluetooth_speaker_outlined,
                          color: CustomColor.greenblue),
                      Text("Viber"),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.17,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.telegram, color: CustomColor.greenblue),
                      Text("Telegram"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          //color: CustomColor.white,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: CustomColor.white,
              borderRadius: BorderRadius.circular(10)),

          child: Row(
            children: [
              Text(text3),
              SizedBox(
                width: 7,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.17,
                // height: MediaQuery.of(context).size.height * 0.02,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.phone, color: CustomColor.greenblue),
                      Text("Phone"),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.17,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.phone_bluetooth_speaker_outlined,
                          color: CustomColor.greenblue),
                      Text("Viber"),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.17,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.telegram, color: CustomColor.greenblue),
                      Text("Telegram"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  _buildBotRow(String text1, String text2) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
          color: CustomColor.greenblue,
          border: GradientBoxBorder(
              width: 3,
              gradient: LinearGradient(colors: [
                CustomColor.darkGreen,
                CustomColor.green,
                CustomColor.green1
              ])),
          borderRadius: BorderRadius.circular(10)),
      height: MediaQuery.of(context).size.height * 0.16,
      child: Column(children: [
        Text(
          text1,
          style:
              TextStyle(color: CustomColor.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          //color: CustomColor.white,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: CustomColor.white,
              borderRadius: BorderRadius.circular(10)),

          child: Row(
            children: [
              Text(text2),
              Spacer(),
              // SizedBox(
              //   width: 7,
              // ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.17,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.phone_bluetooth_speaker_outlined,
                          color: CustomColor.greenblue),
                      Text("Viber"),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.17,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.telegram, color: CustomColor.greenblue),
                      Text("Telegram"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }

  // _buildTwoRow(String text1, String text2, String text3) {
  //   return Container(
  //     color: CustomColor.greenblue,
  //     height: MediaQuery.of(context).size.height * 0.28,
  //     child: Column(children: [
  //       Text(
  //         text1,
  //         style: TextStyle(color: CustomColor.white),
  //       ),
  //       Container(
  //         color: CustomColor.white,
  //         height: MediaQuery.of(context).size.height * 0.1,
  //         child: Row(
  //           children: [
  //             Text(text2),
  //             Card(
  //               child: Column(
  //                 children: [
  //                   Icon(Icons.phone),
  //                   Text("Phone"),
  //                 ],
  //               ),
  //             ),
  //             Card(
  //               child: Column(
  //                 children: [
  //                   Icon(Icons.phone_bluetooth_speaker_outlined),
  //                   Text("Viber"),
  //                 ],
  //               ),
  //             ),
  //             Card(
  //               child: Column(
  //                 children: [
  //                   Icon(Icons.telegram),
  //                   Text("Telegram"),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //       SizedBox(
  //         height: 8,
  //       ),
  //       Container(
  //         height: MediaQuery.of(context).size.height * 0.1,
  //         color: CustomColor.white,
  //         child: Row(
  //           children: [
  //             Text(text3),
  //             Card(
  //               child: Column(
  //                 children: [
  //                   Icon(Icons.phone),
  //                   Text("Phone"),
  //                 ],
  //               ),
  //             ),
  //             Card(
  //               child: Column(
  //                 children: [
  //                   Icon(Icons.phone_bluetooth_speaker_outlined),
  //                   Text("Viber"),
  //                 ],
  //               ),
  //             ),
  //             Card(
  //               child: Column(
  //                 children: [
  //                   Icon(Icons.telegram),
  //                   Text("Telegram"),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ]),
  //   );
  // }

  // _buildBotRow(String text1, String text2) {
  //   return Container(
  //     color: CustomColor.greenblue,
  //     height: MediaQuery.of(context).size.height * 0.15,
  //     child: Column(children: [
  //       Text(
  //         text1,
  //         style: TextStyle(color: CustomColor.white),
  //       ),
  //       Container(
  //         color: CustomColor.white,
  //         height: MediaQuery.of(context).size.height * 0.1,
  //         child: Row(
  //           children: [
  //             Text(text2),
  //             Card(
  //               child: Card(
  //                 child: Column(
  //                   children: [
  //                     Icon(Icons.phone_bluetooth_speaker_outlined),
  //                     Text("Viber"),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //             Card(
  //               child: Column(
  //                 children: [
  //                   Icon(Icons.telegram),
  //                   Text("Telegram"),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       )
  //     ]),
  //   );
  // }
}
