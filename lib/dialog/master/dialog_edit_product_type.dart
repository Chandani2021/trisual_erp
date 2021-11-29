import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/utils/device_utils.dart';

class DialogEditProductType extends StatefulWidget {
  final String? title;
  const DialogEditProductType({Key? key, @required this.title})
      : super(key: key);

  @override
  _DialogEditProductTypeState createState() => _DialogEditProductTypeState();
}

class _DialogEditProductTypeState extends State<DialogEditProductType> {
  double padding = 20;
  double avatarRadius = 25;
  late final String title;

  var _isLoading = false;
  String errorMessage = "";
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool isResendButtonActive = false;

  @override
  void initState() {
    super.initState();

    title = widget.title!;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
              left: padding, top: padding, right: padding, bottom: padding),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(padding),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.strAdd,
                  style: AppStyles.dialogHeadingTextStyle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: '',
                        style: AppStyles.textInputTextStyle,
                        decoration: AppStyles.textFieldInputDecoration
                            .copyWith(
                                hintText: AppStrings.strHintEnterProductType),
                        onSaved: (String? value) {},
                      ),

                      const SizedBox(height: 24),

                      (_isLoading == true)
                          ? const CircularProgressIndicator.adaptive()
                          : GestureDetector(
                              onTap: () {
                                DeviceUtils.hideKeyboard(context);
                                _formKey.currentState!.save();
                                if (!_formKey.currentState!.validate()) {
                                  errorMessage = "";
                                  return;
                                } else {}

                                setState(() {
                                  errorMessage = "";
                                  _isLoading = true;
                                });
                              },
                              child: Container(
                                decoration: AppStyles.buttonDecorationStyle,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 15),
                                  child: Center(
                                    child: Text(
                                      AppStrings.strSubmit,
                                      style: AppStyles.buttonTextStyle,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                      const SizedBox(height: 24),

                      // -----***** Cancel *****-----
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          decoration: AppStyles.buttonDecorationStyle,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 15, bottom: 15),
                            child: Center(
                              child: Text(
                                AppStrings.strCancle,
                                style: AppStyles.buttonTextStyle,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 29.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}