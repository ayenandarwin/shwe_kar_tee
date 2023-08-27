import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';

class ProfileAccScreen extends StatefulWidget {
  const ProfileAccScreen({super.key});

  @override
  State<ProfileAccScreen> createState() => _ProfileAccScreenState();
}

class _ProfileAccScreenState extends State<ProfileAccScreen> {
  TextEditingController usernameController = TextEditingController();
  FocusNode usernameFocusNode = FocusNode();
  TextEditingController phoneController = TextEditingController();
  FocusNode phoneFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.darkGreen,
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
          Stack(
            children: [
              Image.asset("assets/dooro5.jpg"),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 146),
                  child: CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: CustomColor.greenblue,
                    child: Icon(
                      Icons.person,
                      size: 65,
                      color: CustomColor.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 200, left: 55),
                child: Center(
                  child: Icon(
                    Icons.camera_alt,
                    color: CustomColor.yellow1,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              controller: usernameController,
              focusNode: usernameFocusNode,
              decoration: InputDecoration(
                labelText: "Aye Nandar",
                labelStyle: TextStyle(fontSize: 12, color: Colors.grey[400]),
                prefixIcon: Icon(
                  Icons.person,
                  color: CustomColor.yellow1,
                ),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: CustomColor.yellow1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: CustomColor.yellow1,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              controller: phoneController,
              focusNode: phoneFocusNode,
              decoration: InputDecoration(
                labelText: "0945*****80",
                labelStyle: TextStyle(fontSize: 12, color: Colors.grey[400]),
                prefixIcon: Icon(
                  Icons.phone,
                  color: CustomColor.yellow1,
                ),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: CustomColor.yellow1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide(
                    color: CustomColor.yellow1,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.yellow1),
              onPressed: () {},
              child: Text(
                "ပြောင်းမည်",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "အကူအညီလိုပါသလား?",
              style: TextStyle(color: CustomColor.white),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/facebook.png",
                scale: 13,
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/icons/viber.png",
                scale: 13,
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/icons/telegram.png",
                scale: 13,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
