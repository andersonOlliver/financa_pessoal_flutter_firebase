import 'package:cloud_firestore/cloud_firestore.dart';

class Entry {
  final String id;
  final double value;
  final String category;
  late DateTime? createdAt;
  late DocumentReference? reference;

  Entry({
    required this.id,
    required this.value,
    required this.category,
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
        reference: doc.reference,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'value': value,
        'category': category,
        'createdAt': createdAt,
      };
}
