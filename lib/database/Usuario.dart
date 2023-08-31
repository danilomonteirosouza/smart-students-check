/*
class Usuario {
  late String nome;
  late String email;
  late String senha;

  Usuario();
}
 */
import 'package:firebase_auth/firebase_auth.dart';

class Usuario {
  late String nome;
  late String email;
  late String senha;

  Usuario({required this.email, required this.senha});

  Future<UserCredential> logarUsuario() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: senha);
      return userCredential;
    } catch (e) {
      throw e;
    }
  }

// Other methods for user registration, sign out, etc.
}
