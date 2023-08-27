import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/screen/3D/3DHtoeMai.dart';

import '../../utils/constants.dart';

class ThreeDQuickChoose extends StatefulWidget {
  const ThreeDQuickChoose({super.key});

  @override
  State<ThreeDQuickChoose> createState() => _ThreeDQuickChooseState();
}

class _ThreeDQuickChooseState extends State<ThreeDQuickChoose> {
  TextEditingController moneyAmountController = TextEditingController();
  FocusNode moneyAmountFocusNode = FocusNode();
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
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text('(3) လုံး ပူးဂဏန်းများ'),
              Container(
                  margin: EdgeInsets.only(left: 70),
                  child: Text('ဂဏန်းအရေအတွက်: 10')),
              SizedBox(
                height: 25,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _ThreeDOneCard("000"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDOneCard("111"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDOneCard("222"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDOneCard("333"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDOneCard("444"),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _ThreeDOneCard("555"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDOneCard("666"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDOneCard("777"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDOneCard("888"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDOneCard("999"),
                ],
              ),
              Text('အကွက် 100'),
              SizedBox(
                height: 8,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _ThreeDTwoCard("000", "099"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDTwoCard("100", "199"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDTwoCard("200", "299"),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  _ThreeDTwoCard("300", "399"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDTwoCard("400", "499"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDTwoCard("500", "599"),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  _ThreeDTwoCard("600", "699"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDTwoCard("800", "799"),
                  SizedBox(
                    width: 10,
                  ),
                  _ThreeDTwoCard("800", "899"),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  _ThreeDTwoCard("900", "999"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.04,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                  7,
                )),
                child: TextFormField(
                  controller: moneyAmountController,
                  focusNode: moneyAmountFocusNode,
                  decoration: InputDecoration(
                    // fillColor: Colors.grey[300],
                    // focusColor: Colors.grey[300],
                    labelText: "ငွေပမာဏ: အနည်းဆုံး 100 ကျပ်",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide: BorderSide(
                        color: CustomColor.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height * 0.07,
                // color: Colors.grey.shade300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            surfaceTintColor: CustomColor.greenblue,
                            side: BorderSide(
                                color: CustomColor.greenblue, width: 2)
                            // backgroundColor: CustomColor.greenblue
                            ),
                        onPressed: () {
                          //Get.to(ThreeDHtoeMai());
                        },
                        child: Text(
                          "ဖျက်မည်",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColor.greenblue),
                        onPressed: () {
                          Get.to(ThreeDHtoeMai());
                        },
                        child: Text(
                          "ထိုးမည်",
                          style: TextStyle(color: CustomColor.white),
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

  _ThreeDOneCard(String number) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade400, borderRadius: BorderRadius.circular(8)),
      width: MediaQuery.of(context).size.width * 0.16,
      height: MediaQuery.of(context).size.height * 0.061,
      child: Center(child: Text(number)),
    );
  }

  _ThreeDTwoCard(String number1, String number2) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade400, borderRadius: BorderRadius.circular(8)),
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.061,
      child: Center(child: Text(number1 + "-" + number2)),
    );
  }
}
