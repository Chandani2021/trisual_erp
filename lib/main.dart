// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:trishul_erp/ui/page/hr/contractors/contractor_list_page.dart';
import 'package:trishul_erp/ui/page/hr/department/department_list_page.dart';
import 'package:trishul_erp/ui/page/hr/designation/designation_list_page.dart';
import 'package:trishul_erp/ui/page/login/login_page.dart';
import 'package:trishul_erp/ui/page/main_page.dart';
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
import 'package:trishul_erp/ui/page/master/production_sub_page_list.dart';
import 'package:trishul_erp/ui/page/master/products/product_list_page.dart';
import 'package:trishul_erp/ui/page/master/rejection_master/rejection_master_page.dart';
import 'package:trishul_erp/ui/page/master/rejection_specified/rejection_specified_page.dart';
import 'package:trishul_erp/ui/page/master/rejection_type/rejection_type_page.dart';
import 'package:trishul_erp/ui/page/master/report_master/report_master_page.dart';
import 'package:trishul_erp/ui/page/master/scrap/scrap_page.dart';
import 'package:trishul_erp/ui/page/order/customer/customer_list_page.dart';
import 'package:trishul_erp/ui/page/order/order_page.dart';
import 'package:trishul_erp/ui/page/order/sell_order/sell_order_list_page.dart';
import 'package:trishul_erp/ui/page/order/work_order/Work_order_list_page.dart';
import 'package:trishul_erp/ui/page/production/cleaning/cleaning_list_page.dart';
import 'package:trishul_erp/ui/page/production/core_marketing/coremaking_list_page.dart';
import 'package:trishul_erp/ui/page/production/grinding/grinding_list_page.dart';
import 'package:trishul_erp/ui/page/production/knockout/knockout_list_page.dart';
import 'package:trishul_erp/ui/page/production/machining/machning_list_page.dart';
import 'package:trishul_erp/ui/page/production/melting/melting_list_page.dart';
import 'package:trishul_erp/ui/page/production/moulding/moulding_list_page.dart';
import 'package:trishul_erp/ui/page/production/packing/packing_list_page.dart';
import 'package:trishul_erp/ui/page/production/pouring/pouring_list_page.dart';
import 'package:trishul_erp/ui/page/production/sand_inward/sandinward_list_page.dart';
import 'package:trishul_erp/ui/page/production/sand_preparation/sand_preparation_list_page.dart';

import 'constants/app_colors.dart';
import 'ui/page/master/reason_master/reason_master_page.dart';
import 'ui/page/production/dispatch/dispatch_list_page.dart';
import 'ui/page/production/painting_coating/painting_coating_list_page.dart';
import 'ui/page/production/process/process_list_page.dart';
import 'ui/page/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Trishul ERP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.appThemeColor,
      ),
      getPages: [
        GetPage(name: SplashPage.routeName, page: () => const SplashPage()),
        GetPage(name: LoginPage.routeName, page: () => LoginPage()),
        GetPage(name: MainPage.routeName, page: () => MainPage()),
        GetPage(name: GradeListPage.routeName, page: () => GradeListPage()),
        GetPage(name: BrandListPage.routeName, page: () => BrandListPage()),
        GetPage(name: ProductTypePage.routeName, page: () => ProductTypePage()),
        GetPage(
            name: ProductionSubPageListPage.routeName,
            page: () => ProductionSubPageListPage()),
        GetPage(name: ProductTypePage.routeName, page: () => ProductTypePage()),
        GetPage(name: CoreTypePage.routeName, page: () => CoreTypePage()),
        GetPage(name: MachinePage.routeName, page: () => MachinePage()),
        GetPage(
            name: ProductsListPage.routeName, page: () => ProductsListPage()),
        GetPage(name: ScrapePage.routeName, page: () => ScrapePage()),
        GetPage(name: FurnacePage.routeName, page: () => FurnacePage()),
        GetPage(name: LaddlePage.routeName, page: () => LaddlePage()),
        GetPage(
            name: RejectionTypePage.routeName, page: () => RejectionTypePage()),
        GetPage(
            name: RejectionSpecifiedPage.routeName,
            page: () => RejectionSpecifiedPage()),
        GetPage(name: ElectricityPage.routeName, page: () => ElectricityPage()),
        GetPage(name: BinMasterPage.routeName, page: () => BinMasterPage()),
        GetPage(
            name: RejectionMasterPage.routeName,
            page: () => RejectionMasterPage()),
        GetPage(name: ParameterPage.routeName, page: () => ParameterPage()),
        GetPage(
            name: ReportMasterPage.routeName, page: () => ReportMasterPage()),
        GetPage(
            name: ReasonMasterPage.routeName, page: () => ReasonMasterPage()),
        GetPage(name: OrderPage.routeName, page: () => OrderPage()),
        GetPage(
            name: CustomerListPage.routeName, page: () => CustomerListPage()),
        GetPage(
            name: SellOrderListPage.routeName, page: () => SellOrderListPage()),
        GetPage(
            name: WorkOrderListPage.routeName, page: () => WorkOrderListPage()),
        GetPage(
            name: DesignationListPage.routeName,
            page: () => DesignationListPage()),
        GetPage(
            name: DepartmentListPage.routeName,
            page: () => DepartmentListPage()),
        GetPage(
            name: ContractorListPage.routeName,
            page: () => ContractorListPage()),
        GetPage(
            name: SandIndwardListPage.routeName,
            page: () => SandIndwardListPage()),
        GetPage(name: ProcessListPage.routeName, page: () => ProcessListPage()),
        GetPage(
            name: SandPreparationListPage.routeName,
            page: () => SandPreparationListPage()),
        GetPage(
            name: CoreMakingListPage.routeName,
            page: () => CoreMakingListPage()),
        GetPage(
            name: MouldingListPage.routeName, page: () => MouldingListPage()),
        GetPage(name: MeltingListPage.routeName, page: () => MeltingListPage()),
        GetPage(name: PouringListPage.routeName, page: () => PouringListPage()),
        GetPage(
            name: KnockoutListPage.routeName, page: () => KnockoutListPage()),
        GetPage(
            name: CleaningListPage.routeName, page: () => CleaningListPage()),
        GetPage(
            name: GrindingListPage.routeName, page: () => GrindingListPage()),
        GetPage(
            name: PaintingCoatingListPage.routeName,
            page: () => PaintingCoatingListPage()),
        GetPage(
            name: MachningListPage.routeName, page: () => MachningListPage()),
        GetPage(name: PackingListPage.routeName, page: () => PackingListPage()),
        GetPage(
            name: DispatchListPage.routeName, page: () => DispatchListPage()),
      ],
      initialRoute: SplashPage.routeName,
    );
  }
}
