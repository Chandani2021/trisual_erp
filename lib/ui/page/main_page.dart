// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_fonts.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/ui/page/account/account_page.dart';
import 'package:trishul_erp/ui/page/dashboard/dashboard_page.dart';
import 'package:trishul_erp/ui/page/hr/hr_page.dart';
import 'package:trishul_erp/ui/page/master/master_page.dart';
import 'package:trishul_erp/ui/page/order/order_page.dart';
import 'package:trishul_erp/ui/page/production/production_page.dart';

class MainPage extends StatefulWidget {
  static const String routeName = '/main_page';

  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int bottomSelectedIndex = 0;

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        DashboardPage(),
        MasterPage(),
        OrderPage(),
        ProductionPage(),
        HrPage(),
        AccountPage(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    bottomTapped(0);
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      if (pageController.hasClients) {
        pageController.animateToPage(index,
            duration: Duration(milliseconds: 400), curve: Curves.elasticOut);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBottomNavigationBar() {
    return BottomAppBar(
      child: Container(
        alignment: Alignment.center,
        height: 70.0,
        //margin: EdgeInsets.only(left: 30, bottom: 40, right: 30),
        // padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
            )
          ],
          color: AppColors.bottomBarBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  bottomTapped(0);
                },
                child: bottomMenuItem(
                    title: AppStrings.strDashboard,
                    iconPath: AppIcons.icDashboard,
                    isSelected: (bottomSelectedIndex == 0) ? true : false),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  bottomTapped(1);
                },
                child: bottomMenuItem(
                    title: AppStrings.strMaster,
                    iconPath: AppIcons.icMaster,
                    isSelected: (bottomSelectedIndex == 1) ? true : false),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  bottomTapped(2);
                },
                child: bottomMenuItem(
                    title: AppStrings.strOrder,
                    iconPath: AppIcons.icOrder,
                    isSelected: (bottomSelectedIndex == 2) ? true : false),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  bottomTapped(3);
                },
                child: bottomMenuItem(
                    title: AppStrings.strProduction,
                    iconPath: AppIcons.icProduction,
                    isSelected: (bottomSelectedIndex == 3) ? true : false),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  bottomTapped(4);
                },
                child: bottomMenuItem(
                    title: AppStrings.strHr,
                    iconPath: AppIcons.icHr,
                    isSelected: (bottomSelectedIndex == 4) ? true : false),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  bottomTapped(5);
                },
                child: bottomMenuItem(
                    title: AppStrings.strAccount,
                    iconPath: AppIcons.icAccount,
                    isSelected: (bottomSelectedIndex == 5) ? true : false),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomMenuItem(
      {required String title,
      required String iconPath,
      bool isSelected = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          iconPath,
          height: 25,
          color: (isSelected)
              ? AppColors.selectedBottomBarIconColor
              : AppColors.unselectedBottomBarIconColor,
        ),
        const SizedBox(
          height: 2.0,
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: appFontFamily,
              fontSize: 12,
              color: (isSelected)
                  ? AppColors.selectedBottomBarIconColor
                  : AppColors.unselectedBottomBarIconColor),
        ),
      ],
    );
  }

}
