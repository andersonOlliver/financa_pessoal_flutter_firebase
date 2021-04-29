class PaymentLabelDto {
  final String id;
  final String title;

  PaymentLabelDto({
    required this.id,
    required this.title,
  });

  static empty() => PaymentLabelDto(id: '', title: '');
}
