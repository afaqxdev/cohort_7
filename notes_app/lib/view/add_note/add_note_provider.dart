import 'package:firebase_setup/model/note_model.dart';
import 'package:firebase_setup/services/firebase_services.dart';
import 'package:flutter/material.dart';

class AddNoteProvider with ChangeNotifier {
  FirebaseServices firebaseService = FirebaseServices();

  Future<void> addNote({required Note note}) async {
    firebaseService.storeNote(note);
  }
}
