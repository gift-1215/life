import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../SignIn/auth_page.dart';//for global String signInMethod

class AuthService{
  signWithGoogle() async{
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    debugPrint('here');

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    final credentail = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credentail);
  }

  Future<UserCredential> signWithApple() async{
    final appleProvider = AppleAuthProvider();
    appleProvider.addScope('name');
    appleProvider.addScope('email');
    signInMethod = "apple";
    //userId = AppleIDAuthorizationRequest().toString();
    return await FirebaseAuth.instance.signInWithProvider(appleProvider);

  }
}