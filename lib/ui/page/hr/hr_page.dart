// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trishul_erp/constants/app_padding.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/ui/page/bottome_menu_item_list/bottom_menu_item_list_tile.dart';
import 'package:trishul_erp/ui/page/hr/contractors/contractor_list_page.dart';
import 'package:trishul_erp/ui/page/hr/department/department_list_page.dart';
import 'package:trishul_erp/ui/page/hr/designation/designation_list_page.dart';
import 'package:trishul_erp/widgets/widget_bottom_appbar.dart';

class HrPage extends StatefulWidget {
  @override
  State<HrPage> createState() => _HrPageState();
}

class _HrPageState extends State<HrPage> {
  final List<String> hrList = [];

  @override
  void initState() {
    addHrList();
    super.initState();
  }

  void addHrList() {
    hrList.add('01. Designation');
    hrList.add('02. Department');
    hrList.add('03. Contractor');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BottomMenuAppBar(
        title: AppStrings.strHr,
      ),
      body: Padding(
        padding:
            AppPaddings.appScrrenContentPadding.copyWith(top: 20, bottom: 20),
        child: ListView.builder(
            itemCount: hrList.length,
            itemBuilder: (context, index) {
              return BottomMenuItemListTile(
                title: hrList[index],
                callback: () {
                  if (index == 0) {
                    Get.toNamed(DesignationListPage.routeName,
                        arguments: hrList[index]);
                  }
                  if (index == 1) {
                    Get.toNamed(DepartmentListPage.routeName,
                        arguments: hrList[index]);
                  }
                  if (index == 2) {
                    Get.toNamed(ContractorListPage.routeName,
                        arguments: hrList[index]);
                  }
                },
              );
            }),
      ),
    );
  }
}
