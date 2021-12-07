// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trishul_erp/constants/app_padding.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/ui/page/bottome_menu_item_list/bottom_menu_item_list_tile.dart';
import 'package:trishul_erp/ui/page/order/customer/customer_list_page.dart';
import 'package:trishul_erp/ui/page/order/sell_order/sell_order_list_page.dart';
import 'package:trishul_erp/ui/page/order/work_order/Work_order_list_page.dart';
import 'package:trishul_erp/widgets/widget_bottom_appbar.dart';

class OrderPage extends StatefulWidget {
  static const String routeName = '/order';
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
                  callback: () {
                    if (index == 0) {
                      Get.toNamed(CustomerListPage.routeName,
                          arguments: orderList[index]);
                    }
                    if (index == 1) {
                      Get.toNamed(SellOrderListPage.routeName,
                          arguments: orderList[index]);
                    }
                    if (index == 2) {
                      Get.toNamed(WorkOrderListPage.routeName,
                          arguments: orderList[index]);
                    }
                  },
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
