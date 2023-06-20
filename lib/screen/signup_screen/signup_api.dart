import 'package:flutter/foundation.dart';
import 'package:sitafal/model/product_model.dart';
import 'package:sitafal/services/http_service.dart';
import 'package:sitafal/utils/api_end_points.dart';
import 'package:http/http.dart' as http;

import '../../model/signup_model.dart';

class SingUpApi {
  static Future registerUser({Map<String, dynamic>? body}) async {
    try {
      String url = EndpointRes.signUp;
      http.Response? response = await HttpServices.postApi(
          url: url, body: body, header: {'Content-Type': 'application/json'});
   if(response!=null &&  response.statusCode == 200){
       print(response.body);
       return signUpModelFromJson(response.body);
   }
    } catch (e) {
        print(e);
        return null;
    }
  }
}
