import 'package:firebase_auth/firebase_auth.dart';

class AutenticacaoServico {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  cadastrarUsario({
    required String nome,
    required String senha,
    required String email,
  }) async {
    try {
  UserCredential userCredential = await _firebaseAuth
      .createUserWithEmailAndPassword(email: email, password: senha);
  
  await userCredential.user!.updateDisplayName(nome);
} on FirebaseAuthException catch (e) {
  if (e.code == "email-already-in-use"){
    print("O usuário já está cadastrado");
  }
  
}
  }
}
