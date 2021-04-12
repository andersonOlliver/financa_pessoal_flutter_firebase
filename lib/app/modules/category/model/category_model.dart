import 'package:cloud_firestore/cloud_firestore.dart';

class Category {
  final String id;
  final String title;
  final String color;
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
}
