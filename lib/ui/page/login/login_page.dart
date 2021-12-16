// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, must_call_super, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trishul_erp/api/api.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_fonts.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/model/login_model.dart';
import 'package:trishul_erp/ui/page/main_page.dart';
import 'package:trishul_erp/view/toast.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _passwordVisible = false;
  var _isLoading = false;
  var kUserName = '', kPassword = '';
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _passwordVisible = false;
  }

  Future login(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });

    return await API
        .login(context, kUserName, kPassword, showNoInternet: true)
        .then(
      (LoginModel? response) async {
        setState(() {
          _isLoading = false;
        });
        if (response!.code == '200') {
          Toast.show(context, response.message!);
          final preference = await SharedPreferences.getInstance();
          preference.setString('userID', response.data!.user!.id!);
          preference.setString('name', response.data!.user!.name!);
          preference.setString('email', response.data!.user!.email!);

          Get.offAndToNamed(MainPage.routeName);
        } else if (response.code == '401') {
          Toast.show(context, response.message!);
        }
      },
    ).onError((error, stackTrace) {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.grey8Color,
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Form(
              key: _formKey,
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

                  //Username
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: AppStyles.textFieldInputDecoration.copyWith(
                      hintText: AppStrings.strHintUsername,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppMessage.strErrEnterUsername;
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      setState(() {
                        kUserName = newValue!;
                      });
                    },
                    style: AppStyles.textInputTextStyle,
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppMessage.strErrEnterPassword;
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      setState(() {
                        kPassword = newValue!;
                      });
                    },
                    style: AppStyles.textInputTextStyle,
                  ),

                  const SizedBox(
                    height: 15.0,
                  ),

                  //Login Button
                  _isLoading
                      ? const Center(
                          child: CircularProgressIndicator.adaptive(),
                        )
                      : InkWell(
                          onTap: () {
                            AppHelper.hideKeyboard(context);
                            _formKey.currentState!.save();
                            if (!_formKey.currentState!.validate()) {
                              return;
                            } else {
                              login(context);
                            }
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
