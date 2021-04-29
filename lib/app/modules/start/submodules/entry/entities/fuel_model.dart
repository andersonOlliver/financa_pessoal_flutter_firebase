import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:financa_pessoal/app/modules/category/model/category_label_dto.dart';
import 'package:financa_pessoal/app/modules/payment/model/payment_label_dto.dart';

import 'entry_model.dart';
import 'enum/fuel_type_enum.dart';

class Fuel extends Entry {
  final double liter;
  final double valueByLiter;
  final int kilometers;
  final FuelType type;

  Fuel({
    required this.liter,
    required this.valueByLiter,
    required this.kilometers,
    required this.type,
    required String id,
    required double value,
    required CategoryLabelDto category,
    required PaymentLabelDto payment,
    DateTime? createdAt,
    DocumentReference? reference,
  }) : super(
          id: id,
          value: value,
          category: category,
          payment: payment,
          createdAt: createdAt,
          reference: reference,
        );

  factory Fuel.fromDocument(DocumentSnapshot doc) => Fuel(
        id: doc.id,
        value: doc['value'],
        category: doc['category'],
        payment: doc['payment'],
        reference: doc.reference,
        kilometers: doc['kilometers'],
        liter: doc['liter'],
        type: doc['type'],
        valueByLiter: doc['valueByLiter'],
        createdAt: doc['createdAt'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'value': value,
        'category': category,
        'payment': payment,
        'kilometers': kilometers,
        'liter': liter,
        'type': type,
        'valueByLiter': valueByLiter,
        'createdAt': createdAt,
      };
}
