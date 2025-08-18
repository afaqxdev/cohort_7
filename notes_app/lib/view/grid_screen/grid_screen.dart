import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_setup/model/note_model.dart';
import 'package:firebase_setup/services/firebase_services.dart';
import 'package:firebase_setup/view/note_screen/note_screen.dart';
import 'package:flutter/material.dart';

class StaggeredGridView extends StatelessWidget {
  final List<Note> notes;
  final List<QueryDocumentSnapshot> data;
  StaggeredGridView({super.key, required this.notes, required this.data});
  FirebaseServices firebaseServices = FirebaseServices();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      itemCount: notes.length,
      itemBuilder: (context, index) {
        return NoteCard(
          note: notes[index],
          id: data[index].id,
          onDelete: () async {
            await firebaseServices.deleteData(id: data[index].id);
          },
        );
      },
    );
  }
}
