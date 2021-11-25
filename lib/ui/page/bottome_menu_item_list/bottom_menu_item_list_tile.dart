import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_fonts.dart';
import 'package:trishul_erp/constants/app_icons.dart';

class BottomMenuItemListTile extends StatelessWidget {
  final String? title;
  final VoidCallback? callback;

  const BottomMenuItemListTile({Key? key, this.title, this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.only(
          left: 20.0,
          top: 10.0,
          bottom: 10.0,
          right: 5.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: AppColors.grey8Color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                title!,
                style: const TextStyle(
                    fontFamily: appFontFamily,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: AppColors.grey2Color),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                AppIcons.icRightArrowGrey,
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
