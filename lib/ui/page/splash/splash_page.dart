// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/ui/page/login/login_page.dart';

import '../main_page.dart';

class SplashPage extends StatefulWidget {
  static const routeName = '/splash';
  const SplashPage({Key? key}) : super(key: key);
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _visible = false;
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    super.initState();
    _visible = !_visible;
    Timer(const Duration(seconds: 2), () async {
      final preference = await SharedPreferences.getInstance();
      String? userID = preference.getString('userID');
      if (userID != null) {
        Get.offAndToNamed(MainPage.routeName);
      } else {
        Get.offAndToNamed(LoginPage.routeName);
      }
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              AppIcons.icAppLogo,
            ),
          ),
        ],
      ),
    );
  }
}
