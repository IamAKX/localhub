import 'dart:convert';

class CategoryStoreModel {
  String name;
  double rating;
  String image;
  CategoryStoreModel({
    this.name,
    this.rating,
    this.image,
  });

  CategoryStoreModel copyWith({
    String name,
    double rating,
    String image,
  }) {
    return CategoryStoreModel(
      name: name ?? this.name,
      rating: rating ?? this.rating,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'rating': rating,
      'image': image,
    };
  }

  factory CategoryStoreModel.fromMap(Map<String, dynamic> map) {
    return CategoryStoreModel(
      name: map['name'],
      rating: map['rating'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryStoreModel.fromJson(String source) =>
      CategoryStoreModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'CategoryStoreModel(name: $name, rating: $rating, image: $image)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CategoryStoreModel &&
        other.name == name &&
        other.rating == rating &&
        other.image == image;
  }

  @override
  int get hashCode => name.hashCode ^ rating.hashCode ^ image.hashCode;
}
