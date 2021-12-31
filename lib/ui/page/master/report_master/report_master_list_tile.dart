import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/model/report_master_list_model.dart';

class ReportMasterListTile extends StatefulWidget {
  final VoidCallback? deleteCallback;
  final VoidCallback? editCallback;
  final AllReportMasterItem? reportMasterItem;

  const ReportMasterListTile({
    Key? key,
    this.reportMasterItem,
    this.deleteCallback,
    this.editCallback,
  }) : super(key: key);

  @override
  State<ReportMasterListTile> createState() => _ReportMasterListTileState();
}

class _ReportMasterListTileState extends State<ReportMasterListTile> {
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
                            child: Text(
                                widget.reportMasterItem!.name.toString(),
                                style: AppStyles.txtListLblTextStyle),
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
                          Text(widget.reportMasterItem!.process.toString(),
                              style: AppStyles.txtListLblTextStyle),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //Created Date
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strCreatedDate,
                                style: AppStyles.txtListLblTextStyle),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('15-11-2021 08:34 AM',
                              style: AppStyles.txtListLblTextStyle),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //Modified Date
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strModifiedDate,
                                style: AppStyles.txtListLblTextStyle),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('15-11-2021 08:34 AM',
                              style: AppStyles.txtListLblTextStyle),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //Created By
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strCreatedBy,
                                style: AppStyles.txtListLblTextStyle),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('ABC XYZ', style: AppStyles.txtListLblTextStyle),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //Modified By
                      Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strModifiedBy,
                                style: AppStyles.txtListLblTextStyle),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('ABC XYZ', style: AppStyles.txtListLblTextStyle),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
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
