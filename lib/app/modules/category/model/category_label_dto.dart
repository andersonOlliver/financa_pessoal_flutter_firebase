class CategoryLabelDto {
  final String id;
  final String title;
  final String color;

  CategoryLabelDto({
    required this.id,
    required this.title,
    required this.color,
  });

  static CategoryLabelDto empty() =>
      CategoryLabelDto(id: '', title: '', color: '');
}
