import 'package:aprende_java/Usuarios/model/user.dart';
import 'package:aprende_java/Usuarios/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {

  final _cloudFirestoreAPI= CloudFirestoreAPI();
  
  void updateUserdata(User user)=>  _cloudFirestoreAPI.updateUserData(user);
}