import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';

class ClosedDayScreen extends StatefulWidget {
  const ClosedDayScreen({super.key});

  @override
  State<ClosedDayScreen> createState() => _ClosedDayScreenState();
}

class _ClosedDayScreenState extends State<ClosedDayScreen> {
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
        child: Column(children: [
          SizedBox(
            height: 16,
          ),
          Center(
            child: Text(
              "ပိတ်ရက်",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "March",
                  style: TextStyle(color: CustomColor.greenblue),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer("06-03-2023", "Makha Bucha Day"),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "April",
                  style: TextStyle(color: CustomColor.greenblue),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer("06-04-2023", "Chakri memorial Day"),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer("13-04-2023", "Songkran Festival"),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer("14-04-2023", "Songkran Festival"),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "May",
                  style: TextStyle(color: CustomColor.greenblue),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer("01-05-2023", "National Labour Day"),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer("04-05-2023", "Coronation Day"),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "June",
                  style: TextStyle(color: CustomColor.greenblue),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer(
                      "05-06-2023", "Wisakha Bucha Day(Satuarday 3 June 2023)"),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "July",
                  style: TextStyle(color: CustomColor.greenblue),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer("28-07-2023",
                      "H.M King Maha Vajiralongkorn Phra's Birthday"),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "August",
                  style: TextStyle(color: CustomColor.greenblue),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer("01-08-2023", "Asarnha Bucha Day"),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer(
                      "14-08-2023", "The Queen Mother's Birthday"),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "October",
                  style: TextStyle(color: CustomColor.greenblue),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer("13-10-2023",
                      "H.M King Bhumibol Adulyadej The Great Memorial Day"),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer("23-10-2023", "Chulalongkorn Day"),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "December",
                  style: TextStyle(color: CustomColor.greenblue),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer(
                      "15-12-2023", "National Day/Father's Day"),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: _buildContainer(
                      "11-12-2023", "Substitution for Constitution Day"),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  _buildContainer(String date, String day) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      padding: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
          border: Border.all(color: CustomColor.greenblue, width: 2),
          borderRadius: BorderRadius.circular(7)),
      child: Column(children: [
        Text(
          date,
          style: TextStyle(color: CustomColor.greenblue),
        ),
        Text(
          day,
          style: TextStyle(color: CustomColor.greenblue),
        ),
      ]),
    );
  }
}
