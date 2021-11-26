// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trishul_erp/constants/app_padding.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/ui/page/bottome_menu_item_list/bottom_menu_item_list_tile.dart';
import 'package:trishul_erp/ui/page/master/brands_list_page.dart';
import 'package:trishul_erp/ui/page/master/grade_list_page.dart';
import 'package:trishul_erp/widgets/widget_bottom_appbar.dart';

class MasterPage extends StatefulWidget {
  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  final List<String> masterList = [];

  @override
  void initState() {
    addMasterList();
    super.initState();
  }

  void addMasterList() {
    masterList.add('01. Grade');
    masterList.add('02. Brands');
    masterList.add('03. Product Sub Type');
    masterList.add('04. Product Type');
    masterList.add('05. Core Type');
    masterList.add('06. Machine');
    masterList.add('07. Products');
    masterList.add('08. Scrap');
    masterList.add('09. Furnace');
    masterList.add('10. Laddle');
    masterList.add('11. Rejection Type');
    masterList.add('12. Reason Master');
    masterList.add('13. Rejection Master');
    masterList.add('14. Electricity');
    masterList.add('15. Rejection Specified');
    masterList.add('16. Bin Master');
    masterList.add('17. Parameter');
    masterList.add('18. Report Master');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BottomMenuAppBar(
        title: AppStrings.strMaster,
      ),
      body: Padding(
        padding:
            AppPaddings.appScrrenContentPadding.copyWith(top: 20, bottom: 20),
        child: ListView.builder(
            itemCount: masterList.length,
            itemBuilder: (context, index) {
              return BottomMenuItemListTile(
                title: masterList[index],
                callback: () {
                  Get.toNamed(GradeListPage.routeName,
                      arguments: masterList[index]);
                },
              );
            }),
      ),
    );
  }
}
