import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_styles.dart';

/* @Auther : Hardik Kotadiya
   This class will be used for app bar with back button
 */

class AppBarWithBackButton extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final double elevation;
  final bool hasLeading;
  final Color color;
  final bool isVisible;

  @override
  final Size preferredSize;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  AppBarWithBackButton(
      {required this.title,
      this.elevation = 0,
      this.hasLeading = true,
      this.isVisible = true,
      this.color = AppColors.toolbarColor})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(isVisible ? 56 : 0),
      child: isVisible
          ? AppBar(
              backgroundColor: color,
              elevation: elevation,
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(title, style: AppStyles.appBarTitleStyle),
              ),
              leading: hasLeading
                  ? GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: SizedBox(
                          height: 10.0,
                          width: 10.0,
                          child: Image.asset(
                            AppIcons.icBack,
                          ),
                        ),
                      ),
                      onTap: () {
                        Get.back();
                      },
                    )
                  : const SizedBox.shrink(),
            )
          : const SizedBox.shrink(),
    );
  }
}
