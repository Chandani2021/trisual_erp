import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/widgets/widget_list_tile_item.dart';

class MeltingListTile extends StatelessWidget {
  final VoidCallback? callback;

  const MeltingListTile({
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
                      //Scare Type
                      const SizedBox(
                        height: 5,
                      ),
                      ListTileItem(
                        lblText: AppStrings.strScrapType,
                        valueText: '#234',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Grade
                      ListTileItem(
                        lblText: AppStrings.strGrade,
                        valueText: 'A',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Furnace
                      ListTileItem(
                        lblText: AppStrings.strFurnace,
                        valueText: 'ABC',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //KG
                      ListTileItem(
                        lblText: AppStrings.strKG,
                        valueText: '15000',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Number of OK Mould
                      ListTileItem(
                        lblText: AppStrings.strNoOfOkMould,
                        valueText: '20',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Actual Mould Size
                      ListTileItem(
                        lblText: AppStrings.strActualMouldSize,
                        valueText: '200',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Start Time
                      ListTileItem(
                        lblText: AppStrings.strStartTime,
                        valueText: '22:20',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //End Time
                      ListTileItem(
                        lblText: AppStrings.strEndTime,
                        valueText: '23:20',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
