import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/model/product_type_list_model.dart';

class ProductTypeListTile extends StatelessWidget {
  final VoidCallback? deleteCallback;
  final VoidCallback? editCallback;
  final AllProductType? productTypeItem;

  const ProductTypeListTile({
    Key? key,
    this.deleteCallback,
    this.editCallback,
    this.productTypeItem,
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
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(productTypeItem!.name.toString(),
                      style: AppStyles.txtListLblTextStyle),
                ),
                //Edit Button
                InkWell(
                  onTap: () {
                    /*  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const DialogEditGrade(
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
