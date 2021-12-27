import 'package:flutter/material.dart';
import 'package:trishul_erp/api/api.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_fonts.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/model/common_model.dart';
import 'package:trishul_erp/model/designation_list_model.dart';
import 'package:trishul_erp/view/toast.dart';
import 'package:trishul_erp/widgets/widget_list_tile_item.dart';

class DesignationListTile extends StatefulWidget {
  final VoidCallback? deleteCallback;
  final VoidCallback? editCallback;
  final AllDesignation? designationItem;

  const DesignationListTile({
    Key? key,
    this.deleteCallback,
    this.editCallback,
    this.designationItem,
  }) : super(key: key);

  @override
  State<DesignationListTile> createState() => _DesignationListTileState();
}

class _DesignationListTileState extends State<DesignationListTile> {
  bool _isDeleting = false;

  Future deleteDesignation(BuildContext context) async {
    setState(() {
      _isDeleting = true;
    });
    return await API
        .deleteDesignation(context, widget.designationItem!.id!)
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
                        valueText: widget.designationItem!.name.toString(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Created At
                      ListTileItem(
                        lblText: AppStrings.strCreatedAt,
                        valueText:
                            widget.designationItem!.createdDate.toString(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Created By
                      ListTileItem(
                        lblText: AppStrings.strCreatedBy,
                        valueText: widget.designationItem!.createdBy.toString(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Modified At
                      ListTileItem(
                        lblText: AppStrings.strModifiedAt,
                        valueText:
                            widget.designationItem!.modifiedDate.toString(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Modified By
                      ListTileItem(
                        lblText: AppStrings.strModifiedBy,
                        valueText:
                            widget.designationItem!.modifiedBy.toString(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      _isDeleting
                          ? const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                'We are processing your request to delete this item...',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: appFontFamily,
                                  fontSize: 15,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            )
                          : Row(
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
                                        AppMessage.strDltItemMsg, context, () {
                                      Navigator.of(context).pop();
                                      deleteDesignation(context);
                                    }, () {
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
