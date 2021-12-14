// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trishul_erp/constants/app_padding.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/ui/page/bottome_menu_item_list/bottom_menu_item_list_tile.dart';
import 'package:trishul_erp/ui/page/production/cleaning/cleaning_list_page.dart';
import 'package:trishul_erp/ui/page/production/core_marketing/coremaking_list_page.dart';
import 'package:trishul_erp/ui/page/production/dispatch/dispatch_list_page.dart';
import 'package:trishul_erp/ui/page/production/grinding/grinding_list_page.dart';
import 'package:trishul_erp/ui/page/production/machining/machning_list_page.dart';
import 'package:trishul_erp/ui/page/production/melting/melting_list_page.dart';
import 'package:trishul_erp/ui/page/production/moulding/moulding_list_page.dart';
import 'package:trishul_erp/ui/page/production/packing/packing_list_page.dart';
import 'package:trishul_erp/ui/page/production/pouring/pouring_list_page.dart';
import 'package:trishul_erp/ui/page/production/sand_preparation/sand_preparation_list_page.dart';
import 'package:trishul_erp/widgets/widget_bottom_appbar.dart';

import 'knockout/knockout_list_page.dart';
import 'painting_coating/painting_coating_list_page.dart';
import 'process/process_list_page.dart';
import 'sand_inward/sandinward_list_page.dart';

class ProductionPage extends StatefulWidget {
  @override
  State<ProductionPage> createState() => _ProductionPageState();
}

class _ProductionPageState extends State<ProductionPage> {
  final List<String> productionList = [];

  @override
  void initState() {
    addProductionList();
    super.initState();
  }

  void addProductionList() {
    productionList.add('01. Send Inward');
    productionList.add('02. Process');
    productionList.add('03. Sand Preparation');
    productionList.add('04. Core Making');
    productionList.add('05. Moulding');
    productionList.add('06. Melting');
    productionList.add('07. Pouring');
    productionList.add('08. Knockout');
    productionList.add('09. Cleaning');
    productionList.add('10. Grinding');
    productionList.add('11. Painting & Coating');
    productionList.add('12. Machining');
    productionList.add('13. Packing');
    productionList.add('14. Dispatch');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BottomMenuAppBar(
        title: AppStrings.strProduction,
      ),
      body: Padding(
        padding:
            AppPaddings.appScrrenContentPadding.copyWith(top: 20, bottom: 20),
        child: ListView.builder(
            itemCount: productionList.length,
            itemBuilder: (context, index) {
              return BottomMenuItemListTile(
                title: productionList[index],
                callback: () {
                  if (index == 0) {
                    Get.toNamed(SandIndwardListPage.routeName,
                        arguments: productionList[index]);
                  }
                  if (index == 1) {
                    Get.toNamed(ProcessListPage.routeName,
                        arguments: productionList[index]);
                  }
                  if (index == 2) {
                    Get.toNamed(SandPreparationListPage.routeName,
                        arguments: productionList[index]);
                  }
                  if (index == 3) {
                    Get.toNamed(CoreMakingListPage.routeName,
                        arguments: productionList[index]);
                  }
                  if (index == 4) {
                    Get.toNamed(MouldingListPage.routeName,
                        arguments: productionList[index]);
                  }
                  if (index == 5) {
                    Get.toNamed(MeltingListPage.routeName,
                        arguments: productionList[index]);
                  }
                  if (index == 6) {
                    Get.toNamed(PouringListPage.routeName,
                        arguments: productionList[index]);
                  }
                  if (index == 7) {
                    Get.toNamed(KnockoutListPage.routeName,
                        arguments: productionList[index]);
                  }
                  if (index == 8) {
                    Get.toNamed(CleaningListPage.routeName,
                        arguments: productionList[index]);
                  }
                  if (index == 9) {
                    Get.toNamed(GrindingListPage.routeName,
                        arguments: productionList[index]);
                  }
                  if (index == 10) {
                    Get.toNamed(PaintingCoatingListPage.routeName,
                        arguments: productionList[index]);
                  }
                  if (index == 11) {
                    Get.toNamed(MachningListPage.routeName,
                        arguments: productionList[index]);
                  }
                  if (index == 12) {
                    Get.toNamed(PackingListPage.routeName,
                        arguments: productionList[index]);
                  }
                  if (index == 13) {
                    Get.toNamed(DispatchListPage.routeName,
                        arguments: productionList[index]);
                  }
                },
              );
            }),
      ),
    );
  }
}
