// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:shop/API/DataObj.dart';

// Future<Users?> fetchproductCategories() async {
//   try {
//     var url = "https://vue-study.skillbox.cc/api/productCategories";
//     final response = await http.get(Uri.parse(url));
//     if (response.statusCode == 200) {
//       return ProductCategories.fromJson(jsonDecode(response.body));
//     }
//   } catch (e) {
//     print(e.toString());
//   }
// }
