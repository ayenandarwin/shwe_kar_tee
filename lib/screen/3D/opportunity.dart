import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class ThreeDOpportunityScreen extends StatefulWidget {
  const ThreeDOpportunityScreen({super.key});

  @override
  State<ThreeDOpportunityScreen> createState() =>
      _ThreeDOpportunityScreenState();
}

class _ThreeDOpportunityScreenState extends State<ThreeDOpportunityScreen> {
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
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Center(
                child: Text(
              "အခွင့်အရေး",
              style: TextStyle(
                fontSize: 16,
                // color: CustomColor.white,
                fontWeight: FontWeight.bold,
                // letterSpacing: 0.5
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''အောက်ပါဂဏန်းများသည် 80 ရာခိုင်နှုန်းအထက် လူကြိုက်များသော ဂဏန်းများ၊ ထိုးကြေးပြည့်သဖြင့် ပိတ်ထားသော ဂဏန်းများဖြစ်ပါသည်။''',
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''အရောင်ရှင်းလင်းချက်''',
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 13,
                      backgroundColor: Colors.orange,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '80% မှ 99%',
                      style: TextStyle(color: CustomColor.greenblue),
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 13,
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'ထိုးငွေပြည့်သွားပါပြီ',
                      style: TextStyle(color: CustomColor.greenblue),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
