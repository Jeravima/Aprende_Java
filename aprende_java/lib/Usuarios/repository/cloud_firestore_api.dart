import 'package:aprende_java/Usuarios/model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFirestoreAPI {
  final String USERS = "users";

  final Firestore _db = Firestore.instance;

  void updateUserData(User user) {
    DocumentReference ref = _db.collection(USERS).document(user.uid);
  }
}
