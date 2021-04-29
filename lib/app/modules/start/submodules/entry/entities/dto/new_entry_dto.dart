class NewEntry {
  final double value;
  final String title;
  final String category;
  late DateTime? createdAt;
  late String? userId;

  NewEntry(
      {required this.value,
      required this.title,
      required this.category,
      this.createdAt,
      this.userId});

  factory NewEntry.create({
    required double value,
    required String title,
    required String category,
  }) =>
      NewEntry(
        value: value,
        title: title,
        category: category,
        createdAt: DateTime.now(),
      );

  NewEntry copyWith({
    required String userId,
    double? value,
    String? title,
    String? category,
    DateTime? createdAt,
  }) =>
      NewEntry(
          value: value ?? this.value,
          title: title ?? this.title,
          category: category ?? this.category,
          createdAt: createdAt ?? this.createdAt,
          userId: userId);

  Map<String, dynamic> toJson() => {
        'value': value,
        'title': title,
        'category': category,
        'createdAt': createdAt,
        'userId': userId
      };
}
