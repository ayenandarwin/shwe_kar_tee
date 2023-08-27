import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/account/account.dart';
import 'package:shweluckypro/appStart/startScreen.dart';
import 'package:shweluckypro/controller/naviController.dart';
import 'package:shweluckypro/home.dart';
import 'package:shweluckypro/screen/login/login.dart';
import 'package:shweluckypro/screen/promotion.dart';
import 'package:shweluckypro/screen/service.dart';
import 'package:shweluckypro/screen/wallet.dart';
import 'package:shweluckypro/utils/constants.dart';

import '../localization/controller/appLanguageController.dart';
import '../localization/controller/localStorage.dart';
import '../utils/global.dart';

class NaviScreen extends StatefulWidget {
  @override
  _NaviScreenState createState() => _NaviScreenState();
}

class _NaviScreenState extends State<NaviScreen> {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  @override
  void initState() {
    super.initState();
    LocalStorage().languageSelected.then((value) {
      if (value == null) {
        Global.language = AppLanguageController().appLocale;
      } else {
        Global.language = value;
      }
    });
    setState(() {
      Global.loginStatus();
    });
  }

  buildBottomNavigationMenu(context, naviController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.09,
          child: Container(
            // width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(
            //     color: Colors.black,
            //     image: DecorationImage(
            //       //  image: AssetImage("assets/images/icon background.png"),
            //         fit: BoxFit.cover)),
            child: BottomNavigationBar(
              showUnselectedLabels: true,
              showSelectedLabels: true,
              onTap: naviController.changePage,
              currentIndex: naviController.currentIndex.value,
              // backgroundColor: Color.fromRGBO(101, 10, 10, 0.8),
              backgroundColor: CustomColor.darkGreen,
              // backgroundColor: Colors.transparent,
              unselectedItemColor: Colors.white,
              selectedItemColor: CustomColor.yellow2,
              unselectedLabelStyle: unselectedLabelStyle,
              selectedLabelStyle: selectedLabelStyle,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Icon(
                      Icons.home_work_rounded,
                      //  color: CustomColor.yellow2,
                      size: 20.0,
                    ),
                  ),
                  label: 'Home'.tr,
                  backgroundColor: CustomColor.greenblue,
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Icon(
                      Icons.wallet,
                      size: 20.0,
                    ),
                  ),
                  label: 'Wallet'.tr,
                  backgroundColor: CustomColor.greenblue,
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Icon(
                      Icons.wallet_giftcard,
                      size: 20.0,
                    ),
                  ),
                  label: 'Promotion'.tr,
                  backgroundColor: CustomColor.greenblue,
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Icon(
                      Icons.phone,
                      size: 20.0,
                    ),
                  ),
                  label: 'Service'.tr,
                  backgroundColor: CustomColor.greenblue,
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Icon(
                      Icons.person,
                      size: 20.0,
                    ),
                  ),
                  label: 'Profile'.tr,
                  backgroundColor: CustomColor.greenblue,
                ),
              ],
            ),
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    bool login = Global.isLogIn;
    final NaviController naviController = Get.put(NaviController());
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: buildBottomNavigationMenu(context, naviController),
      body: Obx(() => IndexedStack(
            index: naviController.currentIndex.value,
            children: [
              login ? HomePage() : StartScreen(),
              login ? WalletScreen() : LoginScreen(),
              login ? PromotionScreen() : LoginScreen(),
              login ? ServiceScreen() : LoginScreen(),
              login ? ProfileAccScreen() : LoginScreen(),
            ],
          )),
    ));
  }
}
