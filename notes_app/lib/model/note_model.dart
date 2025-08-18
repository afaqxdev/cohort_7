import 'package:cloud_firestore/cloud_firestore.dart';

class Note {
  final String title;
  final String content;
  final String color;
  final DateTime date;

  Note({
    required this.title,
    required this.content,
    required this.color,
    required this.date,
  });

  // Convert Firestore doc → Note
  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      title: json['title'] ?? '',
      content: json['content'] ?? '',
      color: json['color'] ?? 'black',
      date:
          (json['date'] as Timestamp)
              .toDate(), // Firestore stores DateTime as Timestamp
    );
  }
}
