import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/dialog/master/dialog_add_grade.dart';

import 'package:trishul_erp/widgets/widget_appbar_with_back_button.dart';

import 'grade_list_tile.dart';

class GradeListPage extends StatelessWidget {
  static const String routeName = '/grade_list';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWithBackButton(title: 'Grade'),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: AppColors.greyColor, width: 1),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                AppIcons.icSeachWhite,
                                width: 20,
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: TextFormField(
                                    textInputAction: TextInputAction.search,
                                    decoration: AppStyles
                                        .searchTextFieldInputDecoration),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
                            return const GradeListTile();
                          }),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: FloatingActionButton.extended(
                backgroundColor: AppColors.greyColor,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const DialogAddGrade(
                        title: '+91',
                      );
                    },
                  );
                },
                icon: const Icon(Icons.add),
                label: Text(AppStrings.strAddGrade),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
