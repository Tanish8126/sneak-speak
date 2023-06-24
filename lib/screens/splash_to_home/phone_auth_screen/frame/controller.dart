import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'state.dart';

class PhoneAuthScreenController extends GetxController {
  final title = "Sign in with your email and password...";

  final _auth = FirebaseAuth.instance;

  signInUser(String email, String password) async {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  final state = PhoneAuthScreenState();
}
