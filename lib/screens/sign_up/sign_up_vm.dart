import 'package:chat_app/firebase_error/firebase_error.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpViewModel extends ChangeNotifier {

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  void createAccount (String email, String password) async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == FireBaseError.weakPassword) {
        print('The password provided is too weak.');
      } else if (e.code == FireBaseError.usedEmail) {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }


  }

}