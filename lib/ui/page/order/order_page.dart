// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_padding.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/ui/page/bottome_menu_item_list/bottom_menu_item_list_tile.dart';
import 'package:trishul_erp/widgets/widget_bottom_appbar.dart';

class OrderPage extends StatefulWidget {
  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final List<String> orderList = [];

  @override
  void initState() {
    addOrderList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BottomMenuAppBar(
          title: AppStrings.strOrder,
        ),
        body: Padding(
          padding:
              AppPaddings.appScrrenContentPadding.copyWith(top: 20, bottom: 20),
          child: ListView.builder(
              itemCount: orderList.length,
              itemBuilder: (context, index) {
                return BottomMenuItemListTile(
                  title: orderList[index],
                );
              }),
        ));
  }

  void addOrderList() {
    orderList.add('01. Customer');
    orderList.add('02. Sell Order');
    orderList.add('03. Work Order');
  }
}
