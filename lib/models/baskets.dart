class Baskets {
  late final String name;
  late final String images;
  late final int price;
  late final String description;

  Baskets(
      {required this.name,
      required this.images,
      required this.price,
      required this.description});

  factory Baskets.fromJson(dynamic json) {
    return Baskets(
      name: json['name'] as String,
      images: json['images'][0]['hostedLargeUrl'] as String,
      price: json['price'] as int,
      description: json['description'] as String,
    );
  }

  static List<Baskets> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Baskets.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe {name: $name, image: $images';
  }
}
