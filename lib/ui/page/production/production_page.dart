// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_padding.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/ui/page/bottome_menu_item_list/bottom_menu_item_list_tile.dart';
import 'package:trishul_erp/widgets/widget_bottom_appbar.dart';

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
              );
            }),
      ),
    );
  }
}
