import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/model/department_list_model.dart';
import 'package:trishul_erp/widgets/widget_list_tile_item.dart';

class DepartmentListTile extends StatelessWidget {
  final VoidCallback? deleteCallback;
  final VoidCallback? editCallback;
  final AllDepartment? departmentItem;

  const DepartmentListTile({
    Key? key,
    this.deleteCallback,
    this.editCallback,
    this.departmentItem,
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
                      //Name
                      const SizedBox(
                        height: 5,
                      ),
                      ListTileItem(
                        lblText: AppStrings.strName,
                        valueText: departmentItem!.name.toString(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Created At
                      ListTileItem(
                        lblText: AppStrings.strCreatedAt,
                        valueText: departmentItem!.createdDate,
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Created By
                      ListTileItem(
                        lblText: AppStrings.strCreatedBy,
                        valueText: 'Admin',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Modified At
                      ListTileItem(
                        lblText: AppStrings.strModifiedAt,
                        valueText: departmentItem!.modifiedDate,
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Modified By
                      ListTileItem(
                        lblText: AppStrings.strModifiedBy,
                        valueText: departmentItem!.modifiedBy,
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
