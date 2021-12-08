import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Map<String, dynamic>>?> fetchMerchandise() async {
  var url = "https://vue-study.skillbox.cc/api/products";
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var json = jsonDecode(response.body);

    return List<Map<String, dynamic>>.from(jsonDecode(response.body)["items"]);
  }
}
