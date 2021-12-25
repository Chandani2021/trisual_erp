import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/model/brand_list_model.dart';

class BrandListTile extends StatelessWidget {
  final VoidCallback? deleteCallback;
  final VoidCallback? editCallback;
  final AllBrands? brandItem;
  const BrandListTile({
    Key? key,
    this.deleteCallback,
    this.editCallback,
    this.brandItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        margin: const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
        decoration: BoxDecoration(
            color: AppColors.chipColor,
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(brandItem!.name.toString(),
                  style: AppStyles.txtListLblTextStyle),
            ),
            //Edit Button
            Container(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                AppIcons.icEdit,
                color: AppColors.greenColor,
                height: 30,
                width: 30,
              ),
            ),

            const SizedBox(
              width: 5,
            ),

            //Delete Button
            Container(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                AppIcons.icDelete,
                color: AppColors.redColor,
                height: 30,
                width: 30,
              ),
            )
          ],
        ));
  }
}
