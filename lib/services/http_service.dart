import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpServices {
  static Future<http.Response?> getApi({required String url,}) async {
    try {
      if (kDebugMode) {
        print("url==> $url");
      }
      return await http.get(Uri.parse(url));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  static Future<http.Response?> postApi(
      {required String url, Map<String, dynamic>? body ,Map<String,String>? header,}) async {
    try {
        print("url==> $url");
        print("url==> $body");
        print("url==> $header");

      return await http.post(Uri.parse(url), body: jsonEncode(body),headers: header );
    } catch (e) {
      print(e);
      return null;
    }
  }

}
