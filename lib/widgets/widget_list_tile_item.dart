// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:trishul_erp/constants/app_styles.dart';

class ListTileItem extends StatelessWidget {
  final String? lblText;
  final String? valueText;

  const ListTileItem({
    Key? key,
    this.lblText,
    this.valueText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(lblText ?? '', style: AppStyles.txtListLblTextStyle),
        ),
        const SizedBox(
          width: 10,
        ),
        Wrap(
          children: [
            Text(valueText ?? '', style: AppStyles.txtListValueTextStyle)
          ],
        )
      ],
    );
  }
}
