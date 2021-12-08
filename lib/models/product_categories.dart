// ignore_for_file: file_names

import 'dart:convert';

class ProductCategories {
  final String items;
  // final String slug;
  final int id;
  final String title;

  ProductCategories({
    required this.id,
    required this.title,
    required this.items,
    // required this.slug,
  });

  factory ProductCategories.fromJson(Map<String, dynamic> json) {
    return ProductCategories(
      items: json['items'],
      //  slug: json['slug'],
      id: json['id'],
      title: List<ProductCategories>.from(
          json["title"].map((x) => ProductCategories.fromJson(x))).toString(),
    );
  }
  Map<String, dynamic> toJson() => {
        "items": items,
        "title": title,
        "id": id,
      };
}
