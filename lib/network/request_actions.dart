import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';
import 'package:simple_cv/data/models/api_response.dart';
import 'package:simple_cv/utils/common_funcs.dart';

class RequestActions {
  static const _timeoutLimit = Duration(seconds: 10);

  static Future<http.Response> get({
    required Uri url,
    String? token,
  }) {
    final response = http.get(
      url,
      headers: {
        'Content-Type': 'application/json-patch+json',
        'Accept': '*/*',
        'Authorization': 'Bearer $token',
      },
    ).timeout(
      _timeoutLimit,
      onTimeout: () {
        throw TimeoutException("Out of time");
      },
    );

    return response;
  }

  static Future<http.Response> post({
    required Uri url,
    required Map data,
    String? token,
  }) async {
    final body = json.encode(data);
    final response = await http.post(
      url,
      body: body,
      headers: {
        'Content-Type': 'application/json-patch+json',
        'Accept': '*/*',
        'Authorization': 'Bearer $token',
      },
    ).timeout(
      _timeoutLimit,
      onTimeout: () {
        throw TimeoutException("Out of time");
      },
    );

    return response;
  }

  static Future<http.Response> delete({
    required Uri url,
    String? token,
  }) {
    final response = http.delete(
      url,
      headers: {
        'Content-Type': 'application/json-patch+json',
        'Accept': '*/*',
        'Authorization': 'Bearer $token',
      },
    ).timeout(
      _timeoutLimit,
      onTimeout: () {
        throw TimeoutException("Out of time");
      },
    );

    return response;
  }

  static Future<http.Response> patch({
    required Uri url,
    required Map data,
    String? token,
  }) {
    final body = json.encode(data);
    final response = http.patch(
      url,
      body: body,
      headers: {
        'Content-Type': 'application/json-patch+json',
        'Accept': '*/*',
        'Authorization': 'Bearer $token',
      },
    ).timeout(
      _timeoutLimit,
      onTimeout: () {
        throw TimeoutException("Out of time");
      },
    );

    return response;
  }

  static getResponseBody({
    required Response response,
    required BuildContext context,
    String errorMessage = 'Oops! Something went wrong.',
  }) {
    if (response.statusCode == 400) {
      CommonFuncs.showNoti(context, content: errorMessage);
      return;
    }

    Map<String, dynamic> i = json.decode(response.body);
    debugPrint(i.toString());
    return ApiResponse.fromJson(i);
  }
}
