import 'package:aprende_java/Usuarios/model/user.dart';
import 'package:aprende_java/Usuarios/repository/cloud_firestore_repository.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:aprende_java/Usuarios/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {
  /* DE AQUI NO SE TOCA NADA  
     Gracias
  */

  final _auth_repository = AuthRepository();
  Stream<FirebaseUser> streamFirebase =
      FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  //1) Sign in de google 
  Future<FirebaseUser> signIn() {
    return _auth_repository.signInFirebase();
  }

  //2) Registrar usuarios en la bd
  final _cloudfirestoreRepository= CloudFirestoreRepository();
  void updateUserData(User user)=> _cloudfirestoreRepository.updateUserdata(user);

  //3) Sign out
  signOut() {
    _auth_repository.signOut();
  }

  @override
  void dispose() {}
}
