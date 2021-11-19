// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/widgets/widget_bottom_appbar.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BottomMenuAppBar(
          title: AppStrings.strDashboard,
        ),
        body: Center(child: Text(AppStrings.strDashboard)));
  }
}
