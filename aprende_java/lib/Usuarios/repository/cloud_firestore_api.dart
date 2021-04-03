import 'package:aprende_java/Usuarios/model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFirestoreAPI {
  final String USERS = "users";

  final Firestore _db = Firestore.instance;

  void updateUserData(User user) async{
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'lastSignIn': DateTime.now()
    }, merge: true);
  }
}
