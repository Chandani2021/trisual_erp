import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/dialog/master/dialog_edit_machine.dart';
import 'package:trishul_erp/model/rejection_type_list_model.dart';

class RejectionTypeListTile extends StatelessWidget {
  final AllRejection? rejctionTypeItem;
  final VoidCallback? deleteCallback;
  final VoidCallback? editCallback;

  const RejectionTypeListTile({
    Key? key,
    this.rejctionTypeItem,
    this.deleteCallback,
    this.editCallback,
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
                      Text(rejctionTypeItem!.name.toString(),
                          style: AppStyles.txtListLblTextStyle),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(rejctionTypeItem!.shortCode.toString(),
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
                    AppHelper.showAlertDialog(AppMessage.strDlt,
                        AppMessage.strDltItemMsg, context, () {}, () {
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
