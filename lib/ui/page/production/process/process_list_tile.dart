import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/widgets/widget_list_tile_item.dart';

class ProcessListTile extends StatelessWidget {
  final VoidCallback? callback;

  const ProcessListTile({
    Key? key,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Heat Code
                      const SizedBox(
                        height: 5,
                      ),
                      ListTileItem(
                        lblText: AppStrings.strHeatCode,
                        valueText: '#4564',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Work Order
                      ListTileItem(
                        lblText: AppStrings.strWorkOrder,
                        valueText: '4564213',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Product
                      ListTileItem(
                        lblText: AppStrings.strProduct,
                        valueText: 'ABC',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Brand
                      ListTileItem(
                        lblText: AppStrings.strBrand,
                        valueText: 'XYZ',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      // //Pattern No
                      // ListTileItem(
                      //   lblText: AppStrings.strPatternNo,
                      //   valueText: '525',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Grade
                      // ListTileItem(
                      //   lblText: AppStrings.strGrade,
                      //   valueText: 'A',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Pattern Ok
                      // ListTileItem(
                      //   lblText: AppStrings.strPatternOk,
                      //   valueText: 'YES',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Heat Code Fixed
                      // ListTileItem(
                      //   lblText: AppStrings.strHeatCodeFixed,
                      //   valueText: '525',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Getting Charged
                      // ListTileItem(
                      //   lblText: AppStrings.strGettingCharged,
                      //   valueText: 'ASDDS',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Getting Revision No
                      // ListTileItem(
                      //   lblText: AppStrings.strGettingRevision,
                      //   valueText: '654897',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Pattern Heated
                      // ListTileItem(
                      //   lblText: AppStrings.strPatternHeated,
                      //   valueText: 'AAA',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Core Stock
                      // ListTileItem(
                      //   lblText: AppStrings.strCoreStock,
                      //   valueText: 'CCX',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Work Order Qty
                      // ListTileItem(
                      //   lblText: AppStrings.strWorkOrderQty,
                      //   valueText: '50',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Priority
                      // ListTileItem(
                      //   lblText: AppStrings.strPriority,
                      //   valueText: '2',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Core Type
                      // ListTileItem(
                      //   lblText: AppStrings.strCoreType,
                      //   valueText: 'ABN',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Core Mask
                      // ListTileItem(
                      //   lblText: AppStrings.strCoreMask,
                      //   valueText: 'qaqsq',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Pattern No
                      // ListTileItem(
                      //   lblText: AppStrings.strPatternNo,
                      //   valueText: '525',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Filter Used
                      // ListTileItem(
                      //   lblText: AppStrings.strFilterUsed,
                      //   valueText: 'A',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Duplexing
                      // ListTileItem(
                      //   lblText: AppStrings.strDuplexing,
                      //   valueText: 'SASA',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Required Qty
                      // ListTileItem(
                      //   lblText: AppStrings.strRequiredQty,
                      //   valueText: '25',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Created At
                      // ListTileItem(
                      //   lblText: AppStrings.strCreatedAt,
                      //   valueText: '25-12-2021',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Created By
                      // ListTileItem(
                      //   lblText: AppStrings.strCreatedBy,
                      //   valueText: 'Admin',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Modified At
                      // ListTileItem(
                      //   lblText: AppStrings.strModifiedAt,
                      //   valueText: 'ABC XYZ',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      // //Modified By
                      // ListTileItem(
                      //   lblText: AppStrings.strModifiedBy,
                      //   valueText: 'ABC',
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Edit Button
                          InkWell(
                            onTap: () {
                              /*  showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const DialogEditMachine(
                                    title: '+91',
                                  );
                                },
                              ); */
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                AppIcons.icEdit,
                                color: AppColors.greenColor,
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),

                          //Delete Button
                          InkWell(
                            onTap: () {
                              AppHelper.showAlertDialog(
                                  AppMessage.strDlt,
                                  AppMessage.strDltItemMsg,
                                  context,
                                  () {}, () {
                                Navigator.of(context).pop();
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                AppIcons.icDelete,
                                color: AppColors.redColor,
                                height: 40,
                                width: 40,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: AppColors.blackColor,
          )
        ],
      ),
    );
  }
}
