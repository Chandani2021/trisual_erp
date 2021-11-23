import 'package:flutter/material.dart';

import 'app_messages.dart';

class AppHelper {
  //Show Alert Dialog
  static Future<void> showAlertDialog(String title, String msg,
      BuildContext context, positiveCallback, negativeCallback) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(msg),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
                child: Text(AppErrorMessage.strYes),
                onPressed: () {
                  positiveCallback();
                }),
            TextButton(
              child: Text(AppErrorMessage.strNo),
              onPressed: () {
                negativeCallback();
              },
            ),
          ],
        );
      },
    );
  }
}
