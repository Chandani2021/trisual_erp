import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/dialog/master/dialog_edit_grade.dart';
import 'package:trishul_erp/dialog/master/dialog_edit_machine.dart';

class MachineListTile extends StatelessWidget {
  final VoidCallback? callback;

  const MachineListTile({
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
                      Text('Machine Name',
                          style: AppStyles.txtListLblTextStyle),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Process Title',
                          style: AppStyles.txtListLblTextStyle),
                    ],
                  ),
                ),
                //Edit Button
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const DialogEditMachine(
                          title: '+91',
                        );
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      AppIcons.icEdit,
                      color: AppColors.greenColor,
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),

                const SizedBox(
                  width: 5,
                ),

                //Delete Button
                InkWell(
                  onTap: () {
                    AppHelper.showAlertDialog(AppErrorMessage.strDlt,
                        AppErrorMessage.strDltItemMsg, context, () {}, () {
                      Navigator.of(context).pop();
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      AppIcons.icDelete,
                      color: AppColors.redColor,
                      height: 30,
                      width: 30,
                    ),
                  ),
                )
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
