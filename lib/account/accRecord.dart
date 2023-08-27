import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';

class ProfileRecordScreen extends StatefulWidget {
  const ProfileRecordScreen({super.key});

  @override
  State<ProfileRecordScreen> createState() => _ProfileRecordScreenState();
}

class _ProfileRecordScreenState extends State<ProfileRecordScreen> {
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
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                "ထီထိုးမှတ်တမ်း",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            // SizedBox(
            //   height: 16,
            // ),
            Container(
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.symmetric(
                horizontal: 2,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: TabBar(
                padding: EdgeInsets.all(7),
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
                      Icon(Icons.note),
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
                      Icon(Icons.note),
                      SizedBox(
                        width: 10,
                      ),
                      Tab(
                        text: '3D မှတ်တမ်း',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
