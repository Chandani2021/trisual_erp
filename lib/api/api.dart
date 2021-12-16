// ignore_for_file: constant_identifier_names, avoid_print, non_constant_identifier_names

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:trishul_erp/data/network/endpoints.dart';
import 'package:trishul_erp/model/login_model.dart';

class API {
  static void showLog(String message) {
    print(message.toString());
  }

  static const String baseURL = 'http://trishul.latestdevelopers.com/api/Auth';

  static String strNoInternet = 'No Internet Connection';

  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static Future<LoginModel?> login(
      BuildContext context, String username, String password,
      {bool showNoInternet = false}) async {
    const String TAG = 'login';
    LoginModel data;
    String apiUrl = Endpoints.login;
    var url = Uri.parse(apiUrl);
    showLog('${TAG}_URL: ' + url.toString());
    var body = {
      'UserName': username,
      'Password': password,
    };
    showLog('${TAG}_body: ' + body.toString());
    try {
      final response = await http.post(url, body: body);
      var decodedResult = jsonDecode(response.body);
      showLog('${TAG}_response: ' + decodedResult.toString());

      data = LoginModel.fromJson(decodedResult);
      return data;
    } on SocketException {
      showLog('${TAG}_error: $strNoInternet');
      if (showNoInternet) {
        showSnackBar(context, strNoInternet);
      }
      return null;
    } catch (error) {
      showLog('${TAG}_error: $error');
      return null;
    }
  }
}
