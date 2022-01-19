// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trishul_erp/constants/app_padding.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/ui/page/bottome_menu_item_list/bottom_menu_item_list_tile.dart';
import 'package:trishul_erp/ui/page/master/bin_master/bin_master_page.dart';
import 'package:trishul_erp/ui/page/master/brand/brands_list_page.dart';
import 'package:trishul_erp/ui/page/master/core_type/core_type_page.dart';
import 'package:trishul_erp/ui/page/master/electricity/electricity_page.dart';
import 'package:trishul_erp/ui/page/master/furnace/furnace_page.dart';
import 'package:trishul_erp/ui/page/master/grade/grade_list_page.dart';
import 'package:trishul_erp/ui/page/master/laddle/laddle_page.dart';
import 'package:trishul_erp/ui/page/master/machine/machine_page.dart';
import 'package:trishul_erp/ui/page/master/parameter/parameter_page.dart';
import 'package:trishul_erp/ui/page/master/product_type/product_type_page.dart';
import 'package:trishul_erp/ui/page/master/product_subtype/product_subtype_page.dart';
import 'package:trishul_erp/ui/page/master/products/product_list_page.dart';
import 'package:trishul_erp/ui/page/master/reason_master/reason_master_page.dart';
import 'package:trishul_erp/ui/page/master/rejection_master/rejection_master_page.dart';
import 'package:trishul_erp/ui/page/master/rejection_specified/rejection_specified_page.dart';
import 'package:trishul_erp/ui/page/master/rejection_type/rejection_type_page.dart';
import 'package:trishul_erp/ui/page/master/report_master/report_master_page.dart';
import 'package:trishul_erp/ui/page/master/scrap/scrap_page.dart';
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
                  if (index == 0) {
                    Get.toNamed(GradeListPage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 1) {
                    Get.toNamed(BrandListPage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 2) {
                    Get.toNamed(ProductionSubTypePage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 3) {
                    Get.toNamed(ProductTypePage.routeName,
                        arguments: masterList[index]);
                  }

                  if (index == 4) {
                    Get.toNamed(CoreTypePage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 5) {
                    Get.toNamed(MachinePage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 6) {
                    Get.toNamed(ProductsListPage.routeName,
                        arguments: masterList[index]);
                  }

                  if (index == 7) {
                    Get.toNamed(ScrapePage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 8) {
                    Get.toNamed(FurnacePage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 9) {
                    Get.toNamed(LaddlePage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 10) {
                    Get.toNamed(RejectionTypePage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 11) {
                    Get.toNamed(ReasonMasterPage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 12) {
                    Get.toNamed(RejectionMasterPage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 13) {
                    Get.toNamed(ElectricityPage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 14) {
                    Get.toNamed(RejectionSpecifiedPage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 15) {
                    Get.toNamed(BinMasterPage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 16) {
                    Get.toNamed(ParameterPage.routeName,
                        arguments: masterList[index]);
                  }
                  if (index == 17) {
                    Get.toNamed(ReportMasterPage.routeName,
                        arguments: masterList[index]);
                  }
                },
              );
            }),
      ),
    );
  }
}
