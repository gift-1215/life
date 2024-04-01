import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../SignIn/auth_page.dart'; //for global String signInMethod

class AuthService {
  signWithGoogle() async {
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    debugPrint('here');

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    final credentail = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credentail);
  }

  Future<UserCredential> signWithApple() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName
      ],
    );
    final appleProvider = AppleAuthProvider();
    signInMethod = "apple";
    userId = '';
    return await FirebaseAuth.instance.signInWithProvider(appleProvider);
  }

  Future<void> signWithLine() async {
    try {
      final result =
          await LineSDK.instance.login(scopes: ["profile", "openid", "email"]);
      userId = result.accessToken.email!;
      signInMethod = "line";
      Get.off(const AuthPage());
      debugPrint("line sign in success!!!!!!!!!!!!!!!!!!!!!!");
      /*setState(() {
            _userProfile = result.userProfile;
            // user id -> result.userProfile?.userId
            // user name -> result.userProfile?.displayName
            // user avatar -> result.userProfile?.pictureUrl
            // etc...
        });*/
    } on PlatformException catch (e) {
      debugPrint("line sign in failed!!!!!!!!!!!!!!!!!!!!!!");
    }
  }
}
