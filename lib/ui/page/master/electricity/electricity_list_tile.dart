import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/dialog/master/dialog_edit_grade.dart';

class ElectricityListTile extends StatelessWidget {
  final VoidCallback? callback;

  const ElectricityListTile({
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(AppStrings.strStartTime,
                                    style: AppStyles.txtListLblTextStyle
                                        .copyWith(fontWeight: FontWeight.bold)),
                                Text('22-08-2021 08:00',
                                    style: AppStyles.txtListLblTextStyle),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(AppStrings.strEndTime,
                                    style: AppStyles.txtListLblTextStyle
                                        .copyWith(fontWeight: FontWeight.bold)),
                                Text('22-08-2021 08:00',
                                    style: AppStyles.txtListLblTextStyle),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strStartPanel1Reading,
                                style: AppStyles.txtListLblTextStyle
                                    .copyWith(fontWeight: FontWeight.bold)),
                          ),
                          Text('10', style: AppStyles.txtListLblTextStyle),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(AppStrings.strEndPanel1Reading,
                                style: AppStyles.txtListLblTextStyle
                                    .copyWith(fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('10', style: AppStyles.txtListLblTextStyle),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strStartPanel2Reading,
                                style: AppStyles.txtListLblTextStyle
                                    .copyWith(fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('10', style: AppStyles.txtListLblTextStyle),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strEndPanel2Reading,
                                style: AppStyles.txtListLblTextStyle
                                    .copyWith(fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('10', style: AppStyles.txtListLblTextStyle),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strDifference,
                                style: AppStyles.txtListLblTextStyle
                                    .copyWith(fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('25', style: AppStyles.txtListLblTextStyle),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strUnit,
                                style: AppStyles.txtListLblTextStyle
                                    .copyWith(fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('10', style: AppStyles.txtListLblTextStyle),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          //Edit Button
                          InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const DialogEditGrade(
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
                                height: 30,
                                width: 30,
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
