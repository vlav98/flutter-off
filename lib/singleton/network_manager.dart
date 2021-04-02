import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:yuka/product.dart';

class NetworkManager {
  static final NetworkManager _networkManager = NetworkManager._internal();
  final String _url = 'https://api.formation-android.fr/v2/getProduct?barcode=';

  factory NetworkManager() {
    return _networkManager;
  }

  NetworkManager._internal();

  @override
  Future<Product> fetchProduct(String barcode) async {
    if (barcode!.isEmpty) {
      barcode = '5000159484695';
    }

    final http.Response product = await http.get(Uri.parse(_url + barcode));
    if (200 != product.statusCode)
      throw Exception('The request got an error ${product.statusCode}');

    final productJson = json.decode(product.body);

    return Product.jsonToProduct(productJson);
  }
}
