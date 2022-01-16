import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/utils/device_utils.dart';

class DialogAddBin extends StatefulWidget {
  const DialogAddBin({
    Key? key,
  }) : super(key: key);

  @override
  _DialogAddBinState createState() => _DialogAddBinState();
}

class _DialogAddBinState extends State<DialogAddBin> {
  double padding = 20;
  double avatarRadius = 25;
  late final String title;

  List<String> item = ['Yes', 'No'];

  var _isLoading = false;
  String errorMessage = "";
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool isResendButtonActive = false;

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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        initialValue: '',
                        style: AppStyles.textInputTextStyle,
                        decoration: AppStyles.textFieldInputDecoration
                            .copyWith(hintText: AppStrings.strHintEnterReason),
                        onSaved: (String? value) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppStrings.strActive,
                        style: AppStyles.lableTextStyle,
                      ),
                      const SizedBox(height: 10),

                      //Active
                      Container(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              width: 0.7, color: AppColors.grey6Color),
                        ),
                        child: DropdownButton<String>(
                          focusColor: Colors.white,
                          // value: _selectedActive,
                          underline: const SizedBox.shrink(),
                          style: const TextStyle(color: Colors.black),
                          items: item.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          hint: Text(
                            AppStrings.strSelectProcess,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (String? value) {},
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      //Filled
                      Text(
                        AppStrings.strFilled,
                        style: AppStyles.lableTextStyle,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              width: 0.7, color: AppColors.grey6Color),
                        ),
                        child: DropdownButton<String>(
                          focusColor: Colors.white,
                          // value: _selectedActive,
                          underline: const SizedBox.shrink(),
                          style: const TextStyle(color: Colors.black),
                          items: item.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          hint: Text(
                            AppStrings.strSelectProcess,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (String? value) {},
                        ),
                      ),

                      const SizedBox(height: 24),

                      Row(
                        children: [
                          // -----***** Continue Button *****-----
                          (_isLoading == true)
                              ? const CircularProgressIndicator.adaptive()
                              : Expanded(
                                  child: GestureDetector(
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
                                      decoration:
                                          AppStyles.buttonDecorationStyle,
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
                                ),

                          const SizedBox(
                            width: 20,
                          ),

                          // -----***** Cancel *****-----
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                decoration: AppStyles.buttonDecorationStyle,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 15),
                                  child: Center(
                                    child: Text(
                                      AppStrings.strCancle,
                                      style: AppStyles.buttonTextStyle,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
