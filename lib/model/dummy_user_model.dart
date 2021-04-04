import 'dart:convert';

class DummyUser {
  String name;
  String image;
  DummyUser({
    this.name,
    this.image,
  });

  DummyUser copyWith({
    String name,
    String image,
  }) {
    return DummyUser(
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
    };
  }

  factory DummyUser.fromMap(Map<String, dynamic> map) {
    return DummyUser(
      name: map['name'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DummyUser.fromJson(String source) =>
      DummyUser.fromMap(json.decode(source));

  @override
  String toString() => 'DummyUser(name: $name, image: $image)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DummyUser && other.name == name && other.image == image;
  }

  @override
  int get hashCode => name.hashCode ^ image.hashCode;
}
