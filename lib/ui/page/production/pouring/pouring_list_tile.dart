import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/widgets/widget_list_tile_item.dart';

class PouringListTile extends StatelessWidget {
  final VoidCallback? callback;

  const PouringListTile({
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
                      //Code
                      const SizedBox(
                        height: 5,
                      ),
                      ListTileItem(
                        lblText: AppStrings.strCode,
                        valueText: '#234',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //wORK oRDER
                      ListTileItem(
                        lblText: AppStrings.strWorkOrder,
                        valueText: '236',
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

                      //Type
                      ListTileItem(
                        lblText: AppStrings.strType,
                        valueText: 'A',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Number Of Mould
                      ListTileItem(
                        lblText: AppStrings.strNoOfMould,
                        valueText: '20',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Laddle Weight
                      ListTileItem(
                        lblText: AppStrings.strLaddleWeight,
                        valueText: '200 GM',
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

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     //Delete Button
                      //     InkWell(
                      //       onTap: () {
                      //         AppHelper.showAlertDialog(
                      //             AppErrorMessage.strDlt,
                      //             AppErrorMessage.strDltItemMsg,
                      //             context,
                      //             () {}, () {
                      //           Navigator.of(context).pop();
                      //         });
                      //       },
                      //       child: Container(
                      //         padding: const EdgeInsets.all(10),
                      //         child: Image.asset(
                      //           AppIcons.icDelete,
                      //           color: AppColors.redColor,
                      //           height: 40,
                      //           width: 40,
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // )
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
