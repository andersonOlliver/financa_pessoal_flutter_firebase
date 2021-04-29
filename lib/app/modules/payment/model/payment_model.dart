import 'package:cloud_firestore/cloud_firestore.dart';

class Payment {
  final String id;
  final String title;
  final String bank;
  late DateTime? createdAt;
  late DocumentReference? reference;

  Payment({
    required this.id,
    required this.title,
    required this.bank,
    this.createdAt,
    this.reference,
  });
}
