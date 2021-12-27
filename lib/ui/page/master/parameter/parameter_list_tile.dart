import 'package:flutter/material.dart';
import 'package:trishul_erp/api/api.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/model/common_model.dart';
import 'package:trishul_erp/model/parameter_list_model.dart';
import 'package:trishul_erp/view/toast.dart';

class ParameterListTile extends StatefulWidget {
  final VoidCallback? deleteCallback;
  final VoidCallback? editCallback;
  final AllParameters? parameterItem;

  const ParameterListTile({
    Key? key,
    this.deleteCallback,
    this.editCallback,
    this.parameterItem,
  }) : super(key: key);

  @override
  State<ParameterListTile> createState() => _ParameterListTileState();
}

class _ParameterListTileState extends State<ParameterListTile> {
  bool _isDeleting = false;

  Future deleteParameter(BuildContext context) async {
    setState(() {
      _isDeleting = true;
    });
    return await API
        .deleteDesignation(context, widget.parameterItem!.id!)
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
                      Row(
                        children: [
                          Expanded(
                            child: Text(widget.parameterItem!.name.toString(),
                                style: AppStyles.txtListLblTextStyle),
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
                          Text(widget.parameterItem!.unit.toString(),
                              style: AppStyles.txtListLblTextStyle),
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
                          Text(
                              widget.parameterItem!.parameterType!.type
                                  .toString(),
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
                          Text(
                              widget.parameterItem!.parameterType!.control
                                  .toString(),
                              style: AppStyles.txtListLblTextStyle),
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
                          Text(
                              'MinValue : ' +
                                  widget.parameterItem!.specs!.maxValue
                                      .toString() +
                                  ', MinValue : ' +
                                  widget.parameterItem!.specs!.minValue
                                      .toString(),
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
