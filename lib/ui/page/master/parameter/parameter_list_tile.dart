import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/constants/app_styles.dart';

class ParameterListTile extends StatelessWidget {
  final VoidCallback? callback;

  const ParameterListTile({
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
                        children: [
                          Expanded(
                            child: Text('Name',
                                style: AppStyles.txtListLblTextStyle),
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
                                height: 30,
                                width: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //Unit
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strUnit,
                                style: AppStyles.txtListLblTextStyle),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('10', style: AppStyles.txtListLblTextStyle),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //Type
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strType,
                                style: AppStyles.txtListLblTextStyle),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('Value Range Parameter',
                              style: AppStyles.txtListLblTextStyle),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //Control
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strControl,
                                style: AppStyles.txtListLblTextStyle),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('TextBox', style: AppStyles.txtListLblTextStyle),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //Specification
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strSpecification,
                                style: AppStyles.txtListLblTextStyle),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('MaxValue : 47',
                              style: AppStyles.txtListLblTextStyle),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //Process
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strProcess,
                                style: AppStyles.txtListLblTextStyle),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('Melting', style: AppStyles.txtListLblTextStyle),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
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
