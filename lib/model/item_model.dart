import 'dart:convert';

class ItemModel {
  String name;
  String quantity;
  String amount;
  String image;
  ItemModel({
    this.name,
    this.quantity,
    this.amount,
    this.image,
  });

  ItemModel copyWith({
    String name,
    String quantity,
    String amount,
    String image,
  }) {
    return ItemModel(
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      amount: amount ?? this.amount,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'quantity': quantity,
      'amount': amount,
      'image': image,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      name: map['name'],
      quantity: map['quantity'],
      amount: map['amount'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(name: $name, quantity: $quantity, amount: $amount, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ItemModel &&
        other.name == name &&
        other.quantity == quantity &&
        other.amount == amount &&
        other.image == image;
  }

  @override
  int get hashCode {
    return name.hashCode ^ quantity.hashCode ^ amount.hashCode ^ image.hashCode;
  }
}
