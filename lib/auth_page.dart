import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'sign_page.dart';
import 'landing_page.dart';

class AuthPage extends StatelessWidget{
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          return SignInPage();
          /*if(snapshot.hasData){
            return SignInPage();
          }else{
            return LandingPage();
          }*/
        },
      ),
    );
  }
}