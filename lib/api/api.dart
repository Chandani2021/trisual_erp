// ignore_for_file: constant_identifier_names, avoid_print, non_constant_identifier_names

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:trishul_erp/data/network/endpoints.dart';
import 'package:trishul_erp/model/brand_list_model.dart';
import 'package:trishul_erp/model/common_model.dart';
import 'package:trishul_erp/model/designation_list_model.dart';
import 'package:trishul_erp/model/grade_list_model.dart';
import 'package:trishul_erp/model/login_model.dart';
import 'package:trishul_erp/model/parameter_list_model.dart';

class API {
  static void showLog(String message) {
    print(message.toString());
  }

  static String strNoInternet = 'No Internet Connection';

  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static Future<Map<String, String>> getHeader() async {
    String token = 'Bearer ' + await getToken();
    print('header token-->' + token);
    return {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ' + await getToken(),
    };
  }

  static Future<String> getToken() async {
    String? token = '';
    final preference = await SharedPreferences.getInstance();
    bool isExists = preference.containsKey('token');
    if (isExists) {
      token = preference.getString('token');
      print('token-->' + token.toString());
    }
    return token!;
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

  //Grade List
  static Future<GradeListModel?> gradeList(BuildContext context,
      {bool showNoInternet = false}) async {
    const String TAG = 'gradeList';
    GradeListModel data;
    String apiUrl = Endpoints.getGrade;
    var url = Uri.parse(apiUrl);
    showLog('${TAG}_URL: ' + url.toString());
    var body = {};
    showLog('${TAG}_body: ' + body.toString());

    final response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + getToken().toString(),
    });
    showLog('$TAG token: ' + getToken().toString());
    showLog('${TAG}_response: ' + response.body);
    var decodedResult = jsonDecode(response.body);
    //showLog('${TAG}_response: ' + decodedResult.toString());

    data = GradeListModel.fromJson(decodedResult);
    return data;
  }

  //Delete Grade
  static Future<CommonModel?> deleteGrade(BuildContext context, String? id,
      {bool showNoInternet = false}) async {
    const String TAG = 'delete_grade';
    CommonModel data;

    String apiUrl = Endpoints.deleteGrade;
    var url = Uri.parse(apiUrl);
    showLog('${TAG}_URL: ' + url.toString());
    var body = {
      'id': id,
      'Activity': 'Delete',
    };
    showLog('${TAG}_body: ' + body.toString());
    try {
      final response = await http.post(
        url,
        headers: await getHeader(),
        body: body,
      );
      var decodedResult = jsonDecode(response.body);
      showLog('${TAG}_response: ' + decodedResult.toString());

      data = CommonModel.fromJson(decodedResult);
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

  //Parameter List
  static Future<ParameterListModel?> parameterList(BuildContext context,
      {bool showNoInternet = false}) async {
    const String TAG = 'parameterList';
    ParameterListModel data;
    String apiUrl = Endpoints.getParameter;
    var url = Uri.parse(apiUrl);
    showLog('${TAG}_URL: ' + url.toString());
    var body = {};
    showLog('${TAG}_body: ' + body.toString());

    try {
      final response = await http.get(
        url,
        headers: await getHeader(),
      );
      showLog('$TAG token: ' + getToken().toString());
      var decodedResult = jsonDecode(response.body);
      showLog('${TAG}_response: ' + decodedResult.toString());

      data = ParameterListModel.fromJson(decodedResult);
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

  //Delete Parameter
  static Future<CommonModel?> deleteParameter(BuildContext context, String? id,
      {bool showNoInternet = false}) async {
    const String TAG = 'delete_parameter';
    CommonModel data;

    String apiUrl = Endpoints.deleteParameter;
    var url = Uri.parse(apiUrl);
    showLog('${TAG}_URL: ' + url.toString());
    var body = {
      'id': id,
      'Activity': 'Delete',
    };
    showLog('${TAG}_body: ' + body.toString());
    try {
      final response = await http.post(
        url,
        headers: await getHeader(),
        body: body,
      );
      var decodedResult = jsonDecode(response.body);
      showLog('${TAG}_response: ' + decodedResult.toString());

      data = CommonModel.fromJson(decodedResult);
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

  //Brand List
  static Future<BrandsListModel?> brandList(BuildContext context,
      {bool showNoInternet = false}) async {
    const String TAG = 'brandList';
    BrandsListModel data;
    String apiUrl = Endpoints.getBrand;
    var url = Uri.parse(apiUrl);
    showLog('${TAG}_URL: ' + url.toString());
    var body = {};
    showLog('${TAG}_body: ' + body.toString());

    try {
      final response = await http.get(
        url,
        headers: await getHeader(),
      );
      showLog('$TAG token: ' + getToken().toString());
      var decodedResult = jsonDecode(response.body);
      showLog('${TAG}_response: ' + decodedResult.toString());

      data = BrandsListModel.fromJson(decodedResult);
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

  //Delete Brand
  static Future<CommonModel?> deleteBrand(BuildContext context, String? id,
      {bool showNoInternet = false}) async {
    const String TAG = 'delete_brand';
    CommonModel data;

    String apiUrl = Endpoints.deleteBrand;
    var url = Uri.parse(apiUrl);
    showLog('${TAG}_URL: ' + url.toString());
    var body = {
      'id': id,
      'Activity': 'Delete',
    };
    showLog('${TAG}_body: ' + body.toString());
    try {
      final response = await http.post(
        url,
        headers: await getHeader(),
        body: body,
      );
      var decodedResult = jsonDecode(response.body);
      showLog('${TAG}_response: ' + decodedResult.toString());

      data = CommonModel.fromJson(decodedResult);
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

  //Brand List
  static Future<DesignationListModel?> designationList(BuildContext context,
      {bool showNoInternet = false}) async {
    const String TAG = 'designationList';
    DesignationListModel data;
    String apiUrl = Endpoints.getDesignation;
    var url = Uri.parse(apiUrl);
    showLog('${TAG}_URL: ' + url.toString());
    var body = {};
    showLog('${TAG}_body: ' + body.toString());

    try {
      final response = await http.get(
        url,
        headers: await getHeader(),
      );
      showLog('$TAG token: ' + getToken().toString());
      var decodedResult = jsonDecode(response.body);
      showLog('${TAG}_response: ' + decodedResult.toString());

      data = DesignationListModel.fromJson(decodedResult);
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

  //Add Brand
  static Future<CommonModel?> addBrand(BuildContext context, String? name,
      {bool showNoInternet = false}) async {
    const String TAG = 'add_brand';
    CommonModel data;

    String apiUrl = Endpoints.addBrand;
    var url = Uri.parse(apiUrl);
    showLog('${TAG}_URL: ' + url.toString());
    var body = {
      'id': name,
    };
    showLog('${TAG}_body: ' + body.toString());
    try {
      final response = await http.post(
        url,
        headers: await getHeader(),
        body: body,
      );
      var decodedResult = jsonDecode(response.body);
      showLog('${TAG}_response: ' + decodedResult.toString());

      data = CommonModel.fromJson(decodedResult);
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

  //Delete Designation
  static Future<CommonModel?> deleteDesignation(
      BuildContext context, String? id,
      {bool showNoInternet = false}) async {
    const String TAG = 'delete_designation';
    CommonModel data;

    String apiUrl = Endpoints.deleteDesignation;
    var url = Uri.parse(apiUrl);
    showLog('${TAG}_URL: ' + url.toString());
    var body = {
      'id': id,
      'Activity': 'Delete',
    };
    showLog('${TAG}_body: ' + body.toString());
    try {
      final response = await http.post(
        url,
        headers: await getHeader(),
        body: body,
      );
      var decodedResult = jsonDecode(response.body);
      showLog('${TAG}_response: ' + decodedResult.toString());

      data = CommonModel.fromJson(decodedResult);
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
