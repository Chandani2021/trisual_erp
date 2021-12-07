import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/widgets/widget_list_tile_item.dart';

class ContractorListTile extends StatelessWidget {
  final VoidCallback? callback;

  const ContractorListTile({
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
                        valueText: 'AKJF51',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Name
                      ListTileItem(
                        lblText: AppStrings.strName,
                        valueText: 'ADMIN',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Gender
                      ListTileItem(
                        lblText: AppStrings.strGender,
                        valueText: 'Male',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Phone
                      ListTileItem(
                        lblText: AppStrings.strPhone,
                        valueText: '9876543210',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Email
                      ListTileItem(
                        lblText: AppStrings.strEmail,
                        valueText: 'abc@gmail.com',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Address
                      ListTileItem(
                        lblText: AppStrings.strAddress,
                        valueText: 'Rajkot,Gujrat,India',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Salary
                      ListTileItem(
                        lblText: AppStrings.strSalary,
                        valueText: '50,000',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Age
                      ListTileItem(
                        lblText: AppStrings.strAge,
                        valueText: '25',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Joining Date
                      ListTileItem(
                        lblText: AppStrings.strJoiningDate,
                        valueText: '9876543210',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Department
                      ListTileItem(
                        lblText: AppStrings.strDepartment,
                        valueText: 'HR',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Designation
                      ListTileItem(
                        lblText: AppStrings.strDesignation,
                        valueText: 'Manager',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Created At
                      ListTileItem(
                        lblText: AppStrings.strCreatedAt,
                        valueText: '25-12-2021',
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
                        valueText: 'ABC XYZ',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Modified By
                      ListTileItem(
                        lblText: AppStrings.strModifiedBy,
                        valueText: 'ABC',
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
                              AppHelper.showAlertDialog(
                                  AppErrorMessage.strDlt,
                                  AppErrorMessage.strDltItemMsg,
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
