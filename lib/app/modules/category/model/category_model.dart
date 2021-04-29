import 'package:cloud_firestore/cloud_firestore.dart';

class Category {
  final String id;
  final String title;
  final int color;
  late DocumentReference? reference;

  Category({
    required this.id,
    required this.title,
    required this.color,
    this.reference,
  });

  factory Category.fromDocument(DocumentSnapshot doc) => Category(
        id: doc.id,
        title: doc['title'],
        color: doc['color'],
        reference: doc.reference,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Category &&
        other.id == id &&
        other.title == title &&
        other.color == color;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ color.hashCode ^ reference.hashCode;
  }

  Category copyWith({
    String? id,
    String? title,
    int? color,
    DocumentReference? reference,
  }) {
    return Category(
      id: id ?? this.id,
      title: title ?? this.title,
      color: color ?? this.color,
      reference: reference ?? this.reference,
    );
  }
}
