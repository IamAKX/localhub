import 'dart:convert';

class OrderModel {
  String orderNumber;
  String orderTimestamp;
  String customerName;
  String isAccepted;
  String totalAmount;
  String totalQuantity;
  String status;
  OrderModel({
    this.orderNumber,
    this.orderTimestamp,
    this.customerName,
    this.isAccepted,
    this.totalAmount,
    this.totalQuantity,
    this.status,
  });

  OrderModel copyWith({
    String orderNumber,
    String orderTimestamp,
    String customerName,
    String isAccepted,
    String totalAmount,
    String totalQuantity,
    String status,
  }) {
    return OrderModel(
      orderNumber: orderNumber ?? this.orderNumber,
      orderTimestamp: orderTimestamp ?? this.orderTimestamp,
      customerName: customerName ?? this.customerName,
      isAccepted: isAccepted ?? this.isAccepted,
      totalAmount: totalAmount ?? this.totalAmount,
      totalQuantity: totalQuantity ?? this.totalQuantity,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'orderNumber': orderNumber,
      'orderTimestamp': orderTimestamp,
      'customerName': customerName,
      'isAccepted': isAccepted,
      'totalAmount': totalAmount,
      'totalQuantity': totalQuantity,
      'status': status,
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      orderNumber: map['orderNumber'],
      orderTimestamp: map['orderTimestamp'],
      customerName: map['customerName'],
      isAccepted: map['isAccepted'],
      totalAmount: map['totalAmount'],
      totalQuantity: map['totalQuantity'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) =>
      OrderModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OrderModel(orderNumber: $orderNumber, orderTimestamp: $orderTimestamp, customerName: $customerName, isAccepted: $isAccepted, totalAmount: $totalAmount, totalQuantity: $totalQuantity, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderModel &&
        other.orderNumber == orderNumber &&
        other.orderTimestamp == orderTimestamp &&
        other.customerName == customerName &&
        other.isAccepted == isAccepted &&
        other.totalAmount == totalAmount &&
        other.totalQuantity == totalQuantity &&
        other.status == status;
  }

  @override
  int get hashCode {
    return orderNumber.hashCode ^
        orderTimestamp.hashCode ^
        customerName.hashCode ^
        isAccepted.hashCode ^
        totalAmount.hashCode ^
        totalQuantity.hashCode ^
        status.hashCode;
  }
}
