import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:financa_pessoal/app/modules/category/model/category_label_dto.dart';
import 'package:financa_pessoal/app/modules/payment/model/payment_label_dto.dart';

class Entry {
  final String id;
  final double value;
  final CategoryLabelDto category;
  final PaymentLabelDto payment;
  late DateTime? createdAt;
  late DocumentReference? reference;

  Entry({
    required this.id,
    required this.value,
    required this.category,
    required this.payment,
    this.createdAt,
    this.reference,
  }) {
    if (this.createdAt == null) {
      this.createdAt = DateTime.now();
    }
  }

  factory Entry.fromDocument(DocumentSnapshot doc) => Entry(
        id: doc.id,
        value: doc['value'],
        category: doc['category'],
        payment: doc['payment'],
        reference: doc.reference,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'value': value,
        'category': category,
        'createdAt': createdAt,
      };
}
