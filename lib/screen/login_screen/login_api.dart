import 'package:http/http.dart' as http;
import 'package:sitafal/model/login_model.dart';
import 'package:sitafal/services/http_service.dart';
import 'package:sitafal/utils/api_end_points.dart';

class LoginApi {
  static Future loginUser({Map<String, dynamic>? body}) async {
    try {
      String url = EndpointRes.login;
      http.Response? response = await HttpServices.postApi(
          url: url, body: body, header: {'Content-Type': 'application/json'});
      if (response != null && response.statusCode == 200) {
        print("===========${response.body}");
         return loginModelFromJson(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
