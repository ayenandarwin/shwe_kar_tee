import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class ThreeDCommentScreen extends StatefulWidget {
  const ThreeDCommentScreen({super.key});

  @override
  State<ThreeDCommentScreen> createState() => _ThreeDCommentScreenState();
}

class _ThreeDCommentScreenState extends State<ThreeDCommentScreen> {
  TextEditingController commentController = TextEditingController();
  FocusNode commentFocusNode = FocusNode();
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
      bottomNavigationBar: Container(
        color: CustomColor.mint2,
        child: Row(
          children: [
            Container(
              //color: CustomColor.white,
              padding: EdgeInsets.symmetric(horizontal: 16),
              margin: EdgeInsets.symmetric(vertical: 16),
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.85,
              child: TextFormField(
                controller: commentController,
                focusNode: commentFocusNode,
                decoration: InputDecoration(
                  labelText: "မန့်ရိုက်ထည့်ရန်",
                  //  fillColor: CustomColor.white,
                  labelStyle: TextStyle(fontSize: 12, color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: CustomColor.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: CustomColor.white,
                      //color: CustomColor.yellow1,
                      // width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            Icon(
              Icons.send,
              size: 35,
              color: CustomColor.white,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            // padding: EdgeInsets.only(top: 10),
            height: MediaQuery.of(context).size.height * 0.53,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              CustomColor.darkGreen,
              CustomColor.greenblue,
              CustomColor.green1
            ], begin: Alignment.bottomLeft, end: Alignment.topRight)),

            child: _buildWinnerCard("U Kyaw", "0978*****45"),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: CircleAvatar(
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
                ),
                Column(
                  children: [
                    Text(
                      "U Kyaw Myo",
                      style: TextStyle(color: CustomColor.greenblue),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: CustomColor.pyarnu,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          "Good",
                          style: TextStyle(),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2 hour ago",
                          style: TextStyle(),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Reply",
                          style: TextStyle(),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: Column(
                    children: [
                      Icon(Icons.favorite_outline),
                      Text(
                        "0",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  _buildWinnerCard(
    String name,
    String phone,
  ) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: CustomColor.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 4, color: CustomColor.green1)),
        //  border: Border.all(color: CustomColor.greenblue, width: 4)

        width: MediaQuery.of(context).size.width * 0.45,
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
                Container(
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
              ],
            ),
          )
        ]),
      ),
    );
  }
}
