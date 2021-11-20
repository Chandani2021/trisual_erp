import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_padding.dart';
import 'package:trishul_erp/constants/app_styles.dart';

import 'package:trishul_erp/widgets/widget_appbar_with_back_button.dart';

import 'grade_list_tile.dart';

class GradeListPage extends StatelessWidget {
  static const String routeName = '/grade_list';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWithBackButton(title: 'Grade'),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: AppPaddings.appScrrenContentPadding
                  .copyWith(top: 20, bottom: 20),
              child: TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: AppStyles.roundTextInputTextStyle,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.toolbarColor,
                  hintText: 'Search Here',
                  hintStyle: AppStyles.roundTextInputTextStyle,
                  contentPadding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
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
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (ctx, index) {
                      return const GradeListTile();
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
