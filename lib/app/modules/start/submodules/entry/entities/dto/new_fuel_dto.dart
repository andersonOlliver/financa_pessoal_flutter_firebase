import 'package:financa_pessoal/app/modules/category/model/category_label_dto.dart';
import 'package:financa_pessoal/app/modules/payment/model/payment_label_dto.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/entities/enum/fuel_type_enum.dart';

class NewFuel {
  final double value;
  final String title;
  final CategoryLabelDto category;
  final PaymentLabelDto payment;
  final double liter;
  final double valueByLiter;
  final int kilometers;
  final FuelType type;
  late DateTime? createdAt;
  late String? userId;

  NewFuel(
      {required this.value,
      required this.title,
      required this.category,
      required this.payment,
      required this.liter,
      required this.valueByLiter,
      required this.kilometers,
      required this.type,
      this.createdAt,
      this.userId});

  factory NewFuel.create({
    required double value,
    required String title,
    required CategoryLabelDto category,
    required PaymentLabelDto payment,
    required double liter,
    required double valueByLiter,
    required int kilometers,
    required FuelType type,
  }) =>
      NewFuel(
        value: value,
        title: title,
        category: category,
        payment: payment,
        liter: liter,
        valueByLiter: valueByLiter,
        kilometers: kilometers,
        type: type,
        createdAt: DateTime.now(),
      );

  NewFuel copyWith({
    required String userId,
    double? value,
    String? title,
    CategoryLabelDto? category,
    PaymentLabelDto? payment,
    double? liter,
    double? valueByLiter,
    int? kilometers,
    FuelType? type,
    DateTime? createdAt,
  }) =>
      NewFuel(
          value: value ?? this.value,
          title: title ?? this.title,
          category: category ?? this.category,
          payment: payment ?? this.payment,
          liter: liter ?? this.liter,
          valueByLiter: valueByLiter ?? this.valueByLiter,
          kilometers: kilometers ?? this.kilometers,
          type: type ?? this.type,
          createdAt: createdAt ?? this.createdAt,
          userId: userId);

  Map<String, dynamic> toJson() => {
        'value': value,
        'title': title,
        'category': category,
        'payment': payment,
        'createdAt': createdAt,
        'userId': userId,
        'liter': liter,
        'valueByLiter': valueByLiter,
        'kilometers': kilometers,
        'type': type,
      };
}
