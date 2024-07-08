import 'dart:convert';

import 'package:ecommerce_app/model/product_model.dart';
import 'package:http/http.dart' as http;

import '../utils/api_const.dart';

class APIServices {
  static Future<List<ProductsModel>> getProducts() async {
    var uri = Uri.https(BaseUrl, '/products');

    var resposnse = await http.get(uri);
    print('response ${jsonDecode(resposnse.body)}');

    var data = jsonDecode(resposnse.body);
    for (var v in data) {
      print('yes $v \n\n');
    }
    return ProductsModel.productFromSnapshot(data);
  }
}
