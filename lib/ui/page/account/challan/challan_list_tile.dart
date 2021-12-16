import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/widgets/widget_list_tile_item.dart';

class ChallanListTile extends StatelessWidget {
  final VoidCallback? callback;

  const ChallanListTile({
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
      // decoration: BoxDecoration(
      //     color: AppColors.chipColor, borderRadius: BorderRadius.circular(25)),
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
                      //Transaction Number
                      const SizedBox(
                        height: 5,
                      ),
                      ListTileItem(
                        lblText: AppStrings.strTransactionNumber,
                        valueText: '#2856516',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Date
                      ListTileItem(
                        lblText: AppStrings.strDate,
                        valueText: '22-12-2021',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Time
                      ListTileItem(
                        lblText: AppStrings.strTime,
                        valueText: '10:24 AM',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Product
                      ListTileItem(
                        lblText: AppStrings.strProduct,
                        valueText: 'Bands 2-1/4',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Heat Code
                      ListTileItem(
                        lblText: AppStrings.strHeatCode,
                        valueText: '15',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Grade
                      ListTileItem(
                        lblText: AppStrings.strGrade,
                        valueText: 'FG 150',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //From
                      ListTileItem(
                        lblText: AppStrings.strFrom,
                        valueText: 'Cleaning',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //To
                      ListTileItem(
                        lblText: AppStrings.strTo,
                        valueText: 'Rejection',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Bin
                      ListTileItem(
                        lblText: AppStrings.strBin,
                        valueText: '138',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Qty
                      ListTileItem(
                        lblText: AppStrings.strQty,
                        valueText: '144',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

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

                          //Deactivated Button
                          InkWell(
                            onTap: () {
                              AppHelper.showAlertDialog(
                                  AppErrorMessage.strDeactivateUser,
                                  AppErrorMessage.strDeactivateUserMsg,
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
