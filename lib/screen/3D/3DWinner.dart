import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/screen/3D/comment.dart';

import '../../utils/constants.dart';

class ThreeDWinnersScreen extends StatefulWidget {
  const ThreeDWinnersScreen({super.key});

  @override
  State<ThreeDWinnersScreen> createState() => _ThreeDWinnersScreenState();
}

class _ThreeDWinnersScreenState extends State<ThreeDWinnersScreen> {
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
            // margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(children: [
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "3D Top 100 Winners",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Updated at:",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    TextSpan(
                        text: "\n\n28 January 2023 12:01",
                        style: TextStyle(color: Colors.black, fontSize: 14))
                  ])),
                  Text(
                    "519",
                    style: TextStyle(fontSize: 52),
                  )
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildWinnerCard("Kyaw Kyaw", "0996*****45"),
                    _buildWinnerCard("Htike Aung", "0978*****90"),
                  ],
                ),
              ),
              Container(
                // color: Colors.white,
                // margin: EdgeInsets.only(bottom: 110),
                child: Center(
                  child: _buildWinnerLargeCard("ငွေတိုး", "0944*****78"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              _buildSingleCard(1, "Charlie", '0926*****49', 2500, "2375,000"),
              _buildSingleCard(2, "HHW", '0926*****49', 2500, "2375,000"),
              _buildSingleCard(3, "Ko Sai", '0926*****49', 2500, "2375,000"),
              _buildSingleCard(4, "Ko Kyaw", '0926*****49', 2500, "2375,000"),
              _buildSingleCard(4, "Ko Hein", '0926*****49', 2500, "2375,000"),
              _buildSingleCard(4, "PTK", '0926*****49', 2500, "2375,000"),
            ],
          )
        ])),
      ),
    );
  }

  _buildWinnerCard(
    String name,
    String phone,
  ) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: CustomColor.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 4, color: CustomColor.green1)),
      //  border: Border.all(color: CustomColor.greenblue, width: 4)

      width: MediaQuery.of(context).size.width * 0.32,
      height: MediaQuery.of(context).size.height * 0.33,
      child: Column(children: [
        Container(
          // margin: EdgeInsets.only(top: 16),
          width: MediaQuery.of(context).size.width * 0.21,
          height: MediaQuery.of(context).size.height * 0.115,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/dooro1.png"),
              )),
        ),
        Container(
          //  padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          //  padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(phone),
        ),
        SizedBox(
          height: 8,
        ),
        Card(
          child: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "ထိုးငွေ",
                    style: TextStyle(fontSize: 11),
                  ),
                  Text(
                    "5000",
                    style: TextStyle(fontSize: 11),
                  )
                ]),
          ),
        ),
        Card(
          child: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "အနိုင်ရငွေ",
                    style: TextStyle(fontSize: 11),
                  ),
                  Text(
                    "475,000",
                    style: TextStyle(fontSize: 11),
                  )
                ]),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          // height: MediaQuery.of(context).size.height * 0.033,
          // margin: EdgeInsets.only(left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.09,
                height: MediaQuery.of(context).size.height * 0.033,
                //  margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: CustomColor.greenblue,
                    borderRadius: BorderRadius.circular(5)),
                child: Container(
                  child: Icon(
                    Icons.favorite,
                    color: CustomColor.white,
                    size: 20,
                  ),
                ),
              ),
              InkWell(
                onTap: () => Get.to(ThreeDCommentScreen()),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.09,
                  height: MediaQuery.of(context).size.height * 0.033,
                  //margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      color: CustomColor.greenblue,
                      borderRadius: BorderRadius.circular(5)),
                  child: Container(
                    child: Icon(
                      Icons.comment,
                      color: CustomColor.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }

  _buildWinnerLargeCard(
    String name,
    String phone,
  ) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: CustomColor.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 4, color: CustomColor.green1)),
      //  border: Border.all(color: CustomColor.greenblue, width: 4)

      width: MediaQuery.of(context).size.width * 0.32,
      height: MediaQuery.of(context).size.height * 0.365,
      child: Column(children: [
        Container(
          // margin: EdgeInsets.only(top: 16),
          width: MediaQuery.of(context).size.width * 0.21,
          height: MediaQuery.of(context).size.height * 0.14,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/dooro3.png"),
              )),
        ),
        Container(
          //  padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          //  padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(phone),
        ),
        SizedBox(
          height: 8,
        ),
        Card(
          child: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "ထိုးငွေ",
                    style: TextStyle(fontSize: 11),
                  ),
                  Text(
                    "5000",
                    style: TextStyle(fontSize: 11),
                  )
                ]),
          ),
        ),
        Card(
          child: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "အနိုင်ရငွေ",
                    style: TextStyle(fontSize: 11),
                  ),
                  Text(
                    "475,000",
                    style: TextStyle(fontSize: 11),
                  )
                ]),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          // height: MediaQuery.of(context).size.height * 0.033,
          // margin: EdgeInsets.only(left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.09,
                height: MediaQuery.of(context).size.height * 0.033,
                //  margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: CustomColor.greenblue,
                    borderRadius: BorderRadius.circular(5)),
                child: Container(
                  child: Icon(
                    Icons.favorite,
                    color: CustomColor.white,
                    size: 20,
                  ),
                ),
              ),
              InkWell(
                onTap: () => Get.to(ThreeDCommentScreen()),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.09,
                  height: MediaQuery.of(context).size.height * 0.033,
                  //margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      color: CustomColor.greenblue,
                      borderRadius: BorderRadius.circular(5)),
                  child: Container(
                    child: Icon(
                      Icons.comment,
                      color: CustomColor.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }

  _buildSingleCard(
      int id, String name, String phone, int amount, String winAmount) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            // height: MediaQuery.of(context).size.height * 0.033,
            margin: EdgeInsets.only(top: 80, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.09,
                  height: MediaQuery.of(context).size.height * 0.033,
                  //  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      color: CustomColor.greenblue,
                      borderRadius: BorderRadius.circular(5)),
                  child: Container(
                    child: Icon(
                      Icons.favorite,
                      color: CustomColor.white,
                      size: 20,
                    ),
                  ),
                ),
                InkWell(
                  onTap: (() => Get.to(ThreeDCommentScreen())),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.09,
                    height: MediaQuery.of(context).size.height * 0.033,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: CustomColor.greenblue,
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      child: Icon(
                        Icons.comment,
                        color: CustomColor.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 4,
          ),
          height: MediaQuery.of(context).size.height * 0.1,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              //decoration: BoxDecoration(color: CustomColor.white),
              padding: EdgeInsets.symmetric(horizontal: 16),
              width: MediaQuery.of(context).size.width,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      id.toString(),
                      style: TextStyle(fontSize: 25),
                    ),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.07,
                      backgroundColor: Colors.grey[400],
                      child: Container(
                        child: CircleAvatar(
                          maxRadius: MediaQuery.of(context).size.width * 0.065,
                          backgroundColor: CustomColor.greenblue,
                          child: Icon(
                            Icons.person,
                            size: 40,
                            color: CustomColor.white,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(name),
                            SizedBox(
                              width: 45,
                            ),
                            Text(
                              "ထိုးငွေ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "အနိုင်ရငွေ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                // margin: EdgeInsets.only(right: 30),
                                child: Text(phone)),
                            SizedBox(
                              width: 25,
                            ),
                            Text(amount.toString()),
                            SizedBox(
                              width: 25,
                            ),
                            Text(winAmount.toString())
                          ],
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
