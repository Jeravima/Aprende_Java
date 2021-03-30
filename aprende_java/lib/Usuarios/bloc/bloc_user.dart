import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:aprende_java/Usuarios/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {

  
  final _auth_repository = AuthRepository();
  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  Future<FirebaseUser> signIn() {
    return _auth_repository.signInFirebase();
  }


  @override
  void dispose() {


  }
}

