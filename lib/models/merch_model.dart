import 'dart:convert';

class Merchandise {
  final String items;
  final int id;
  final String title;
  final int price;
  final colors;
  final image;

  Merchandise({
    required this.id,
    required this.title,
    required this.items,
    required this.price,
    required this.colors,
    required this.image,
  });

  factory Merchandise.fromJson(Map<String, dynamic> json) {
    return Merchandise(
      items: json['items'],
      //  slug: json['slug'],
      id: json['id'],
      title: List<Merchandise>.from(
          json["title"].map((x) => Merchandise.fromJson(x))).toString(),
      price: json['price'],
      colors: json['colors'],
      image: json['image'],
    );
  }
  Map<String, dynamic> toJson() => {
        "items": items,
        "title": title,
        "id": id,
        "colors": colors,
        "price": price,
        "image": image
      };
}
