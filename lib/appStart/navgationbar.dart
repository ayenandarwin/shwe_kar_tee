import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shweluckypro/appStart/startScreen.dart';
import 'package:shweluckypro/controller/naviController.dart';
import 'package:shweluckypro/home.dart';
import 'package:shweluckypro/screen/profile.dart';
import 'package:shweluckypro/screen/promotion.dart';
import 'package:shweluckypro/screen/service.dart';
import 'package:shweluckypro/screen/wallet.dart';
import 'package:shweluckypro/utils/constants.dart';

import '../account/account.dart';
import '../screen/login/login.dart';
import '../utils/global.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  bool login = Global.isLogIn;
  final NaviController naviController = Get.put(NaviController());
  int _selectedIndex = 0;
  final List<Widget> screen = [
    // StartScreen(),
    HomePage(),

    //login ? WalletScreen() : LoginScreen(),
    // login ? PromotionScreen() : LoginScreen(),
    // login ? ServiceScreen() : LoginScreen(),
    // login ? ProfileAccScreen():LoginScreen(),
    WalletScreen(),
    PromotionScreen(),
    ServiceScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screen.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        // color: Colors.black,
        //margin: EdgeInsets.only(bottom: 16),
        child: GNav(
            gap: 8,
            padding: EdgeInsets.all(16),
            backgroundColor: CustomColor.darkGreen,
            color: Colors.white,
            activeColor: CustomColor.yellow2,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            // tabBackgroundColor: Colors.grey.shade700,
            tabs: [
              GButton(
                icon: Icons.home,
                iconSize: 25,
                text: "Home",
              ),
              GButton(
                icon: Icons.wallet,
                iconSize: 25,
                text: "Wallet",
              ),
              GButton(
                icon: Icons.wallet_giftcard,
                iconSize: 25,
                text: "Promotion",
              ),
              GButton(
                icon: Icons.phone,
                iconSize: 25,
                text: "Servies",
              ),
              GButton(
                icon: Icons.person,
                iconSize: 25,
                text: "Profile",
              )
            ]),
      ),
    );
  }
}
