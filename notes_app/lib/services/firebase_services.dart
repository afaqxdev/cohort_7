import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_setup/const/collection_name.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FirebaseServices {
  Future<void> signUP({
    required String email,
    required String password,
    required dynamic data,
  }) async {
    try {
      final auth = FirebaseAuth.instance;

      final user = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final comingData = data;
      comingData['uid'] = user.user!.uid;

      await storeData(id: user.user!.uid, data: comingData);
      Fluttertoast.showToast(msg: "Sign Up SuccessFully ");
    } on Exception catch (e) {
      Fluttertoast.showToast(msg: "Something went Wrong at SingUp $e");
    }
  }

  Future<void> storeData({required String id, dynamic data}) async {
    try {
      FirebaseFirestore.instance.collection(userCollection).doc(id).set(data);
      Fluttertoast.showToast(msg: "Successfully Store Data");
    } on Exception catch (e) {
      Fluttertoast.showToast(msg: "Something went Wrong $e");
    }
  }

  Future<void> storeNote(dynamic data) async {
    try {
      final auth = FirebaseAuth.instance;
      await FirebaseFirestore.instance
          .collection(userCollection)
          .doc(auth.currentUser!.uid)
          .collection('notes')
          .add({
            'title': data.title,
            'content': data.content,
            'date': data.date,
            'color': data.color,
          });
      Fluttertoast.showToast(msg: "Store note");
    } on Exception catch (e) {
      Fluttertoast.showToast(msg: "error $e");
    }
  }

  Future<void> deleteData({required String id}) async {
    try {
      final auth = FirebaseAuth.instance;
      FirebaseFirestore.instance
          .collection(userCollection)
          .doc(auth.currentUser!.uid)
          .collection(noteCollection)
          .doc(id)
          .delete();
      Fluttertoast.showToast(msg: "Note Successfully delete");
    } on Exception catch (e) {
      Fluttertoast.showToast(msg: "error $e");
    }
  }

  Future<void> updateData({required String id, required dynamic data}) async {
    try {
      final auth = FirebaseAuth.instance;
      FirebaseFirestore.instance
          .collection(userCollection)
          .doc(auth.currentUser!.uid)
          .collection(noteCollection)
          .doc(id)
          .update(data);

      Fluttertoast.showToast(msg: "Note Successfully delete");
    } on Exception catch (e) {
      Fluttertoast.showToast(msg: "error $e");
    }
  }

  Future<void> logout() async {
    try {
      final auth = FirebaseAuth.instance;
      auth.signOut();

      Fluttertoast.showToast(msg: "Logout Successfully");
    } on Exception catch (e) {
      Fluttertoast.showToast(msg: "error $e");
    }
  }
}
