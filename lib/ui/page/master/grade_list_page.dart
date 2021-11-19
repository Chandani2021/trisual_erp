import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_fonts.dart';
import 'package:trishul_erp/constants/app_padding.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/constants/app_styles.dart';

import 'package:trishul_erp/widgets/widget_appbar_with_back_button.dart';

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
                      return Container(
                        padding: const EdgeInsets.only(
                            left: 25, right: 25, top: 12, bottom: 12),
                        margin: const EdgeInsets.only(
                            top: 5, bottom: 5, left: 15, right: 15),
                        decoration: BoxDecoration(
                            color: AppColors.chipColor,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Indward Hot Box Sand',
                                style: AppStyles.txtListLblTextStyle),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //Edit Button
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 10),
                                  decoration: AppStyles
                                      .roundButtonDecorationStyle
                                      .copyWith(color: AppColors.greenColor),
                                  child: Text(
                                    AppStrings.strEdit,
                                    style: AppStyles.txtEditDltTextStyle,
                                  ),
                                ),

                                const SizedBox(
                                  width: 15,
                                ),

                                //Delete Button
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 10),
                                  decoration:
                                      AppStyles.roundButtonDecorationStyle,
                                  child: Text(
                                    AppStrings.strDelete,
                                    style: AppStyles.txtEditDltTextStyle,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
