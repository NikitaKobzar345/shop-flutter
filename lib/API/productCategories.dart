// ignore_for_file: file_names

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shop/models/product_categories.dart';

Future<List<Map<String, dynamic>>?> fetchproductCategories() async {
  var url = "https://vue-study.skillbox.cc/api/productCategories";
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var json = jsonDecode(response.body);

    return List<Map<String, dynamic>>.from(jsonDecode(response.body)["items"]);
  }
}
