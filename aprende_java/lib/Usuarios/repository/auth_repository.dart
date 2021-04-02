import 'package:firebase_auth/firebase_auth.dart';
import 'package:aprende_java/Usuarios/Repository/firebase_auth_api.dart';

class AuthRepository {
  /* DE AQUI NO SE TOCA NADA 
     Gracias
  */

  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<FirebaseUser> signInFirebase() => _firebaseAuthAPI.signIn();
  signOut() => _firebaseAuthAPI.signOut();
}
