// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/ui/page/account/challan/challan_list_tile.dart';
import 'package:trishul_erp/widgets/widget_appbar_with_back_button.dart';

class ChallanListPage extends StatefulWidget {
  static const String routeName = '/challan_list';

  const ChallanListPage({Key? key}) : super(key: key);

  @override
  State<ChallanListPage> createState() => _ChallanListPageState();
}

class _ChallanListPageState extends State<ChallanListPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var appbarTitle = Get.arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWithBackButton(title: appbarTitle),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              _selectDate(context);
                            },
                            child: TextFormField(
                              enabled: false,
                              style: AppStyles.textInputTextStyle,
                              decoration: AppStyles.textFieldInputDecoration
                                  .copyWith(hintText: AppStrings.strStartDate),
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                                // map['Mobile'] = value!.trim();
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: TextFormField(
                            style: AppStyles.textInputTextStyle,
                            decoration: AppStyles.textFieldInputDecoration
                                .copyWith(hintText: AppStrings.strEndDate),
                            onSaved: (String? value) {
                              // This optional block of code can be used to run
                              // code when the user saves the form.
                              // map['Mobile'] = value!.trim();
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              width: 0.7, color: AppColors.grey6Color)),
                      child: DropdownButton<String>(
                        focusColor: Colors.white,
                        // value: _selectedProcess,
                        underline: const SizedBox.shrink(),
                        //elevation: 5,
                        style: const TextStyle(color: Colors.white),
                        iconEnabledColor: Colors.black,

                        isExpanded: true,
                        items: <String>[
                          'CoreMaking',
                          'Machining',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        hint: Text(
                          AppStrings.strSelectProcess,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        onChanged: (String? value) {
                          setState(() {});
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        decoration: AppStyles.buttonDecorationStyle,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 15),
                          child: Center(
                            child: Text(
                              AppStrings.strSearch,
                              style: AppStyles.buttonTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (ctx, index) {
                        return const ChallanListTile();
                      }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
