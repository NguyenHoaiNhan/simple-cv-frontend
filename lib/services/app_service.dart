import 'dart:convert';

class AppService {
  AppService._privateConstructor();

  static final AppService _instance = AppService._privateConstructor();

  static AppService get instance => _instance;

  String? accountId;
  String? accountName;
  String? email;
  String? token;

  saveAccountInfo({
    required String token,
  }) {
    final parsedJwt = tryParseJwt(token);

    this.token = token;
    accountId = parsedJwt['Id'];
    accountName = parsedJwt['unique_name'];
    email = parsedJwt['email'];
  }

  Map<String, dynamic> tryParseJwt(String token) {
    final parts = token.split('.');

    // if (parts.length != 3) return null;

    final payload = parts[1];
    var normalized = base64Url.normalize(payload);

    var resp = utf8.decode(base64Url.decode(normalized));

    final payloadMap = json.decode(resp);

    // if (payloadMap is! Map<String, dynamic>) {
    //   return null;
    // }

    return payloadMap;
  }
}
