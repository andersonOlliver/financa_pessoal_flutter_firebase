class NewCategory {
  final String title;
  final int color;
  late String? userId;
  late DateTime createdAt;

  NewCategory(
      {required this.title,
      required this.color,
      required this.createdAt,
      this.userId});

  factory NewCategory.create({
    required String title,
    required int color,
  }) =>
      NewCategory(
        title: title,
        color: color,
        createdAt: DateTime.now(),
      );

  NewCategory copyWith({
    required String userId,
    String? title,
    int? color,
  }) =>
      NewCategory(
          title: title ?? this.title,
          color: color ?? this.color,
          createdAt: this.createdAt,
          userId: userId);

  Map<String, dynamic> toJson() => {
        'title': title,
        'color': color,
        'createdAt': createdAt,
        'userId': userId
      };
}
