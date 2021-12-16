import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_helper.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_messages.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/widgets/widget_list_tile_item.dart';

class SellOrderListTile extends StatelessWidget {
  final VoidCallback? callback;

  const SellOrderListTile({
    Key? key,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      // decoration: BoxDecoration(
      //     color: AppColors.chipColor, borderRadius: BorderRadius.circular(25)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //PerForm No
                      const SizedBox(
                        height: 5,
                      ),
                      ListTileItem(
                        lblText: AppStrings.strPerFormNo,
                        valueText: '9876543210',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Customer PO Name
                      ListTileItem(
                        lblText: AppStrings.strCustomerPomNo,
                        valueText: 'DSAJKFHASKJDFN',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Customer Name
                      ListTileItem(
                        lblText: AppStrings.strCustomerName,
                        valueText: 'ABC XYZ',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Address
                      ListTileItem(
                        lblText: AppStrings.strAddress,
                        valueText: 'Rajkot, Gujrat India,Rajkot',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Notify Person
                      ListTileItem(
                        lblText: AppStrings.strNotifyPerson,
                        valueText: 'XYZ ABA',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Total Price
                      ListTileItem(
                        lblText: AppStrings.strTotalPrice,
                        valueText: '2500',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Status
                      ListTileItem(
                        lblText: AppStrings.strStatus,
                        valueText: 'Active',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Customer Order Date
                      ListTileItem(
                        lblText: AppStrings.strCustomerOrderDate,
                        valueText: '12-12-2021',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Created Date
                      ListTileItem(
                        lblText: AppStrings.strCreatedDate,
                        valueText: '25-12-2021',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Modified Date
                      ListTileItem(
                        lblText: AppStrings.strModifiedDate,
                        valueText: '25-12-2021',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //Created By
                      ListTileItem(
                        lblText: AppStrings.strCreatedBy,
                        valueText: 'ABC',
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //Modified By
                      ListTileItem(
                        lblText: AppStrings.strModifiedBy,
                        valueText: 'ABC',
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Prepare Work Order Button
                          InkWell(
                            onTap: () {
                              /*  showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const DialogEditMachine(
                                    title: '+91',
                                  );
                                },
                              ); */
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                AppIcons.icList,
                                color: AppColors.greenColor,
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),

                          //Edit Button
                          InkWell(
                            onTap: () {
                              /*  showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const DialogEditMachine(
                                    title: '+91',
                                  );
                                },
                              ); */
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                AppIcons.icEdit,
                                color: AppColors.greenColor,
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),

                          //Delete Button
                          InkWell(
                            onTap: () {
                              AppHelper.showAlertDialog(
                                  AppMessage.strDlt,
                                  AppMessage.strDltItemMsg,
                                  context,
                                  () {}, () {
                                Navigator.of(context).pop();
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                AppIcons.icDelete,
                                color: AppColors.redColor,
                                height: 40,
                                width: 40,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: AppColors.blackColor,
          )
        ],
      ),
    );
  }
}
