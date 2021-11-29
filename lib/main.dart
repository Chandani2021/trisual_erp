// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:trishul_erp/ui/page/login/login_page.dart';
import 'package:trishul_erp/ui/page/main_page.dart';
import 'package:trishul_erp/ui/page/master/brands_list_page.dart';
import 'package:trishul_erp/ui/page/master/core_type_page.dart';
import 'package:trishul_erp/ui/page/master/grade_list_page.dart';
import 'package:trishul_erp/ui/page/master/machine_page.dart';
import 'package:trishul_erp/ui/page/master/product_type_page.dart';
import 'package:trishul_erp/ui/page/master/production_sub_page_list.dart';

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
        GetPage(name: GradeListPage.routeName, page: () => GradeListPage()),
        GetPage(name: BrandListPage.routeName, page: () => BrandListPage()),
        GetPage(name: ProductTypePage.routeName, page: () => ProductTypePage()),
        GetPage(
            name: ProductionSubPageListPage.routeName,
            page: () => ProductionSubPageListPage()),
        GetPage(name: ProductTypePage.routeName, page: () => ProductTypePage()),
        GetPage(name: CoreTypePage.routeName, page: () => CoreTypePage()),
        GetPage(name: MachinePage.routeName, page: () => MachinePage()),
      ],
      initialRoute: SplashPage.routeName,
    );
  }
}
