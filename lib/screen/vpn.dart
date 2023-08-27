import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/constants.dart';

class VPNCloseScreen extends StatefulWidget {
  const VPNCloseScreen({super.key});

  @override
  State<VPNCloseScreen> createState() => _VPNCloseScreenState();
}

class _VPNCloseScreenState extends State<VPNCloseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.darkGreen,
        title: Text(
          "Kar Tee",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: CustomColor.yellow),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: CustomColor.yellow1,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 55,
          ),
          Center(
            child: Image.asset(
              "assets/dooro1.png",
              scale: 7,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text("VPN ပိတ်ပြီးမှသာ Game ထဲသို့ဝင်ပါ"),
          Column(
            children: [
              _buildCountryCard("1. ဘူလ်ဂေးရီးယား"),
              _buildCountryCard("​2. ဟောင်ကောင်"),
              _buildCountryCard("3. အီရန်"),
              _buildCountryCard("4. မကာအို"),
              _buildCountryCard("5. မြောက်ကိုရီးယား"),
              _buildCountryCard("6. ဖီလစ်ပိုင်"),
              _buildCountryCard("7. စင်ကာပူ"),
              _buildCountryCard("8. ထိုင်ဝမ်"),
              _buildCountryCard("9. ယူနိုက်တက်ကင်းဒမ်း"),
              _buildCountryCard("10. အမေရိကန်ပြည်ထောင်စု"),
            ],
          )
        ]),
      ),
    );
  }

  _buildCountryCard(String text) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 16),

      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.07,
      child: Card(
          child: Container(
              // alignment: Alignment.center,
              padding: EdgeInsets.only(left: 16, top: 10),
              child: Text(text))),
    );
  }
}
