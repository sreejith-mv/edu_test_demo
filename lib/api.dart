import 'dart:convert';

import 'package:http/http.dart' as http;

class ProductsApi {
  final String url = 'https://jsonplaceholder.typicode.com/photos';

  Future<dynamic> getProducts() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Throw load product exception');
    }
  }
}
