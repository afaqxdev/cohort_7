import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_setup/const/collection_name.dart';
import 'package:flutter/material.dart';

class HomePrvoder with ChangeNotifier {
  Stream<QuerySnapshot<Map<String, dynamic>>> getData() {
    final auth = FirebaseAuth.instance.currentUser;
    return FirebaseFirestore.instance
        .collection(userCollection)
        .doc(auth!.uid)
        .collection('notes')
        .snapshots();
  }
}
