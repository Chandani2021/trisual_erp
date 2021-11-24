// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, must_call_super, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_fonts.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/ui/page/main_page.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.grey8Color,
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Image.asset(
                      AppIcons.icAppLogo,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                      child: Container(
                    width: 100,
                    height: 5,
                    color: AppColors.redColor,
                  )),

                  Text(
                    AppStrings.strLogin,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        fontFamily: appFontFamily),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  //Email
                  Container(
                    height: 45,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: AppStyles.textFieldInputDecoration.copyWith(
                        hintText: AppStrings.strHintUsername,
                      ),
                      style: AppStyles.textInputTextStyle,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  //Password
                  TextFormField(
                    obscureText: !_passwordVisible,
                    keyboardType: TextInputType.emailAddress,
                    decoration: AppStyles.textFieldInputDecoration.copyWith(
                      hintText: AppStrings.strHintPassword,
                      suffix: InkWell(
                        onTap: () {
                          if (_passwordVisible) {
                            setState(() {
                              _passwordVisible = false;
                            });
                          } else {
                            setState(() {
                              _passwordVisible = true;
                            });
                          }
                        },
                        child: Text(
                            _passwordVisible
                                ? AppStrings.strHide
                                : AppStrings.strShow,
                            style: AppStyles.hideShowTextStyle),
                      ),
                    ),
                    style: AppStyles.textInputTextStyle,
                  ),

                  const SizedBox(
                    height: 15.0,
                  ),

                  //Login Button
                  InkWell(
                    onTap: () {
                      Get.toNamed(MainPage.routeName);
                    },
                    child: Container(
                      decoration: AppStyles.buttonDecorationStyle,
                      width: double.infinity,
                      height: 50.0,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(AppStrings.strLogin,
                                textAlign: TextAlign.center,
                                style: AppStyles.buttonTextStyle),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
