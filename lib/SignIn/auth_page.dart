import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:life/components/my_drawer.dart';
import 'package:life/home_page.dart';
import 'sign_page.dart';

//global
String signInMethod = 'email';
String userId = '';

class AuthPage extends StatelessWidget{
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(
                child: MyDrawer(),
              ),
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          
          builder: (context, snapshot) {
            if(snapshot.hasData){
              return HomePage();
            }else{
              return const SignInPage();
            }
          },
        ),
      ),
    );
  }
}