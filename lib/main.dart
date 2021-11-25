// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:trishul_erp/ui/page/login/login_page.dart';
import 'package:trishul_erp/ui/page/main_page.dart';
import 'package:trishul_erp/ui/page/master/master_general_list_page.dart';

import 'constants/app_colors.dart';
import 'ui/page/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Trishul ERP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.appThemeColor,
      ),
      getPages: [
        GetPage(name: SplashPage.routeName, page: () => const SplashPage()),
        GetPage(name: LoginPage.routeName, page: () => LoginPage()),
        GetPage(name: MainPage.routeName, page: () => MainPage()),
        GetPage(name: MasterGeneralListPage.routeName, page: () => MasterGeneralListPage()),
      ],
      initialRoute: SplashPage.routeName,
    );
  }
}
