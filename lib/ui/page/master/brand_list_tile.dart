import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_styles.dart';

class GradeListTile extends StatelessWidget {
  const GradeListTile({
    Key? key,
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
              child: Text('Indward Hot Box Sand',
                  style: AppStyles.txtListLblTextStyle),
            ),
            //Edit Button
            Container(
              padding: EdgeInsets.all(10),
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
              padding: EdgeInsets.all(10),
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
