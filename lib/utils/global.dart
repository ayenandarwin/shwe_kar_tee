import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shweluckypro/utils/sharedPref.dart';

import 'package:uuid/uuid.dart';

class Global {
  //Default Token
  static String? token;
  static String? language;
  static String? myBalance;
  static String? version;

  //info
  static String? privacyPolicy;
  static String? termCondition;
  static String? asxoxFacebook;
  static String? about;
  static String? mission;
  static String? history;
  static int wishListCount = 0;
  static int orderCount = 0;
  static int messageCount = 0;
  static String? threeDExpireTime;
  static String? twoDExpireTime;
  static String? twoDOpenTime;
  static String? morningNumber;
  static String? eveningNumber;
  //final IsLoginController isLoginController = Get.find();

  static bool isLoading = false;

  //Token header
  static final Map<String, String> tokenHeaders = {
    "Accept": "application/json",
    "authorization": "$token",
  };

  static final Map<String, String> headers = {
    "Accept": "application/json",
  };

  //Profile
  // static ProfileData? profileData;

  //Register User
  static String? email;
  static String? password;

  //Pagination
  static int lastPage = 0;
  static int currentPage = 0;
  static String? showProductsFinished;

  static List<String> genderList = ["Male".tr, "Female".tr];

  static List<String> maritalList = ["Single", "Married"];

  //Format Price
  static String formatPrice(int price) {
    var f = NumberFormat("##,###");
    return f.format(price) + " Ks";
  }

  static String formatDate(String date) {
    //2020-11-04T13:36:02.541Z
    var str = date.substring(0, 10) + ' ' + date.substring(11, 23);
    DateTime dt = DateTime.parse(str);
    //String newDate = DateFormat("EEE, d MMM yyyy").format(dt);
    String newDate = DateFormat("dd-MM-yyyy").format(dt);
    return newDate;
  }

  static String prettyPrint(Map json) {
    JsonEncoder encoder = const JsonEncoder.withIndent('  ');
    String pretty = encoder.convert(json);
    return pretty;
  }

  //Check LogIn Status
  static bool isLogIn = false;

  static Future loginStatus() async {
    var tokentemp = await SharedPref.getData(key: SharedPref.token);

    if (tokentemp == null) {
      isLogIn = false;
    } else {
      isLogIn = true;
      token = tokentemp;
      // var tokenUser = await SharedPref.getUser(key: SharedPref.profile);
    }
  }

  static void showLogInDialog() {
    Get.defaultDialog(
        title: "Login".tr,
        titleStyle: const TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold),
        middleText: 'You need to login first'.tr,
        actions: [
          InkWell(
            onTap: () => Get.back(),
            child: Container(
              width: 80,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  border: Border.all(color: Colors.deepOrange, width: 1)),
              child: Text(
                'Cancel'.tr,
                style: const TextStyle(fontSize: 12, color: Colors.deepOrange),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.back();
              //NaviController.to.currentIndex.value = 4;
              Get.back();
            },
            child: Container(
              width: 80,
              height: 30,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: Text(
                'Login'.tr,
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ),
        ]);
  }

  static void showComingSoonDialog(screenSize) {
    Get.defaultDialog(
        titleStyle: const TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold),
        title: "Alert",
        middleText: "Coming Soon".tr,
        actions: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              width: 80,
              height: 40,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: const Text(
                'OK',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ),
        ]);
  }

  static Future<void> launchToSite(String url) async {
    // if (await canLaunch(url)) {
    //   await launch(url);
    // } else {
    //   throw 'Could not launch $url';
    // }
  }

  static Future<void> launchToMPUSite1(String url) async {
    String tokenLogin;
    SharedPref.getData(key: SharedPref.token).then((value) async {
      tokenLogin = value!;
      // if (await canLaunch(url)) {
      //   await launch(
      //     url,
      //     headers: <String, String>{"Authorization": tokenLogin},
      //     forceWebView: true,
      //     enableDomStorage: true,
      //     enableJavaScript: true,
      //   );
      // } else {
      //   throw 'Could not launch $url';
      // }
    });
  }

  static Future<void> launchToMPUSite(Map<String, dynamic>? data) async {
    var tokenLogin;
    final Uri uri = Uri(
      scheme: "https",
      path: "www.mpuecomuat.com:60145/UAT/Payment/Payment/pay",
      queryParameters: data,
    );
    // SharedPref.getData(key: SharedPref.token)
    //     .then((value) => tokenLogin = value);
    // if (await canLaunch(uri.toString())) {
    //   await launch(
    //     uri.toString(),
    //   );
    // } else {
    //   throw 'Could not launch $uri';
    // }
  }

  static LinearGradient shimmerGradient = const LinearGradient(
    colors: [
      Color(0xFFEBEBF4),
      Color(0xFFF4F4F4),
      Color(0xFFEBEBF4),
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );

  // static removeRememberUser() {
  //   final RememberController rememberController = Get.find();
  //   final rememberUsername = rememberController.readRememberUsername();
  //   final rememberPassword = rememberController.readRememberPassword();
  //   if (rememberUsername != null && rememberPassword != null) {
  //     rememberController.removeRememberUsername();
  //     rememberController.removeRememberPassword();
  //   }
  // }

  //2021-06-10T16:14:18.000000Z
  static String dateTimeConvert({required String dateTime}) {
    final convertDate = DateTime.parse(dateTime).toString();
    final date =
        DateFormat("EEE, d MMM yyyy h:mm a").format(DateTime.parse(dateTime));
    return date;
  }

  // LogOut() {
  //   SharedPref.clear();
  //   // Global.user = null;
  //   isLoginController.logout();
  //   NaviController.to.currentIndex.value = 0;
  // }
}
