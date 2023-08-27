import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/appStart/naviScreen.dart';
import 'package:shweluckypro/appStart/startScreen.dart';
import 'package:shweluckypro/home.dart';
import 'package:shweluckypro/appStart/navgationbar.dart';
import 'package:shweluckypro/screen/2D/2D.dart';
import 'package:shweluckypro/screen/3D/3D.dart';
import 'package:shweluckypro/screen/record.dart';

import 'screen/login/login.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kar Tee',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: LoginScreen(),
      home: NavScreen(),
      // home: StartScreen(),
      //home: NaviScreen(),
    );
  }
}
