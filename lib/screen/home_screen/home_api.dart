import 'package:flutter/foundation.dart';
import 'package:sitafal/model/product_model.dart';
import 'package:sitafal/services/http_service.dart';
import 'package:sitafal/utils/api_end_points.dart';
import 'package:http/http.dart' as http;

class HomeScreenApi{

  static Future getData()async {
    try{
      http.Response? response = await HttpServices.getApi(url: EndpointRes.productAPI);
      if(response!=null && response.statusCode == 200){
        return productModelFromJson(response.body);
      }
    }catch(e){
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

// static Future addData() async {
//   try{
//     http.Response? response = await HttpServices.postApi(url: EndpointRes.productAPI);
//     if(response!=null && response.statusCode == 200){
//       return imageModelFromJson(response.body);
//     }
//   }catch(e){
//     if (kDebugMode) {
//       print(e);
//     }
//     return null;
//   }
// }

}