import 'package:aprende_java/Platzi/User/model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'cloud_firestore_api.dart';


class CloudFirestoreRepository {

  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(User user) => _cloudFirestoreAPI.updateUserData(user);

}