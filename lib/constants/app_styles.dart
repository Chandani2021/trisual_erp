// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_fonts.dart';

class AppStyles {
  /* @Author: Hardik*/

  static TextStyle appBarTitleStyle = const TextStyle(
      color: AppColors.whiteColor,
      fontFamily: appFontFamily,
      fontSize: 18.0,
      fontWeight: FontWeight.w700);

  static TextStyle buttonTextStyle = const TextStyle(
      color: AppColors.whiteColor,
      fontFamily: appFontFamily,
      fontSize: 16.0,
      fontWeight: FontWeight.w700);

  static BoxDecoration buttonDecorationStyle = BoxDecoration(
    color: AppColors.buttonBgColor,
  );

  static TextStyle hintTextStyle = const TextStyle(
      color: AppColors.hintTextColor,
      fontSize: 15.0,
      fontFamily: appFontFamily,
      fontWeight: FontWeight.w400);

  static TextStyle hideShowTextStyle = const TextStyle(
    color: AppColors.blackColor,
    fontFamily: appFontFamily,
    fontWeight: FontWeight.bold,
  );

  static TextStyle accountMenuTextStyle = const TextStyle(
    color: AppColors.blackColor,
    fontFamily: appFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 16.0,
  );

  static TextStyle textInputTextStyle = const TextStyle(
      fontFamily: appFontFamily, fontSize: 15.0, color: AppColors.blackColor);

  static TextStyle roundTextInputTextStyle = const TextStyle(
      fontFamily: appFontFamily, fontSize: 15.0, color: AppColors.whiteColor);

  static TextStyle lableTextStyle = const TextStyle(
      fontFamily: appFontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w700,
      color: AppColors.blackColor);

  static InputDecoration textFieldInputDecoration = const InputDecoration(
    contentPadding: EdgeInsets.only(left: 10, right: 10),
    fillColor: Colors.white,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.greyColor, width: 1.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.greyColor, width: 1.0),
    ),
    hintStyle: TextStyle(
        color: AppColors.hintTextColor,
        fontSize: 15.0,
        fontFamily: appFontFamily,
        fontWeight: FontWeight.w400),
  );

  static TextStyle txtEditDltTextStyle = const TextStyle(
      fontFamily: appFontFamily,
      fontWeight: FontWeight.bold,
      color: AppColors.whiteColor,
      fontSize: 12);

  static TextStyle txtListLblTextStyle = const TextStyle(
      fontFamily: appFontFamily,
      fontSize: 18,
      color: AppColors.blackColor,
      fontWeight: FontWeight.w500);

  static BoxDecoration roundButtonDecorationStyle = BoxDecoration(
      borderRadius: BorderRadius.circular(20), color: AppColors.toolbarColor);

  static InputDecoration searchTextFieldInputDecoration = const InputDecoration(
    contentPadding: EdgeInsets.zero,
    border: InputBorder.none,
    hintText: 'Search Here',
    hintStyle: const TextStyle(
      color: AppColors.secondaryTextColor,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      fontFamily: appFontFamily,
    ),
  );
}
