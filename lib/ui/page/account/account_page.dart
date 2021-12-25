// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trishul_erp/constants/app_images.dart';
import 'package:trishul_erp/constants/app_padding.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/ui/page/account/users/users_list_page.dart';
import 'package:trishul_erp/ui/page/bottome_menu_item_list/bottom_menu_item_list_tile.dart';
import 'package:trishul_erp/widgets/widget_bottom_appbar.dart';

import 'challan/challan_list_page.dart';

class AccountPage extends StatefulWidget {
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final List<String> adminstratorList = [];
  String? userName;

  @override
  void initState() {
    addAdminstratorList();
    getUserName();
    super.initState();
  }

  void addAdminstratorList() {
    adminstratorList.add('01. Users');
    adminstratorList.add('02. Challan');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BottomMenuAppBar(
        title: AppStrings.strAccount,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.asset(
                      AppImages.imgAvtarPlaceholder,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    userName!,
                    style: AppStyles.lableTextStyle.copyWith(fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Administrator',
                style: AppStyles.lableTextStyle,
              ),
            ),
            Expanded(
              child: Padding(
                padding: AppPaddings.appScrrenContentPadding
                    .copyWith(top: 20, bottom: 20),
                child: ListView.builder(
                    itemCount: adminstratorList.length,
                    itemBuilder: (context, index) {
                      return BottomMenuItemListTile(
                          title: adminstratorList[index],
                          callback: () {
                            if (index == 0) {
                              Get.toNamed(UsersListPage.routeName,
                                  arguments: adminstratorList[index]);
                            }
                            if (index == 1) {
                              Get.toNamed(ChallanListPage.routeName,
                                  arguments: adminstratorList[index]);
                            }
                          });
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }

  void getUserName() async {
    final preference = await SharedPreferences.getInstance();
    setState(() {
      userName = preference.getString('name') ?? '';
    });
  }
}
