import 'package:flutter/material.dart';
import 'package:trishul_erp/api/api.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_fonts.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/dialog/master/dialog_edit_grade.dart';
import 'package:trishul_erp/model/common_model.dart';
import 'package:trishul_erp/model/grade_list_model.dart';
import 'package:trishul_erp/view/toast.dart';

class GradeListTile extends StatefulWidget {
  final VoidCallback? deleteCallback;
  final VoidCallback? editCallback;

  final AllGrade? gradeItem;

  const GradeListTile({
    Key? key,
    this.gradeItem,
    this.editCallback,
    this.deleteCallback,
  }) : super(key: key);

  @override
  State<GradeListTile> createState() => _GradeListTileState();
}

class _GradeListTileState extends State<GradeListTile> {
  bool _isDeleting = false;

  Future deleteGrade(BuildContext context) async {
    setState(() {
      _isDeleting = true;
    });
    return await API
        .deleteGrade(context, widget.gradeItem!.id!)
        .then((CommonModel? response) {
      setState(() {
        _isDeleting = false;
      });
      if (response!.code == '200') {
        Toast.show(context, response.msg!);
        widget.deleteCallback!();
      } else if (response.code == '401') {
        Toast.show(context, response.msg!);
      }
    }).onError((error, stackTrace) {
      setState(() {
        _isDeleting = false;
      });
    });
  }

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
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: _isDeleting
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'We are processing your request to delete this item...',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: appFontFamily,
                        fontSize: 15,
                        color: AppColors.blackColor,
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(widget.gradeItem!.name ?? '',
                            style: AppStyles.txtListLblTextStyle),
                      ),
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
                          AppHelper.showAlertDialog(AppMessage.strDlt,
                              AppMessage.strDltItemMsg, context, () {
                            deleteGrade(context);
                          }, () {
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
