import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '請先登入',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
      ),
      body: _user != null ? _userInfo() : _googleSignInBotton(),
    );
  }

  Widget _googleSignInBotton() {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.05,
        width: MediaQuery.of(context).size.width*0.34,
        child: SignInButton(
          Buttons.google,
          text: "Google 登入",
          onPressed: _handleGoogleSignIn,
        ),
      ),
    );
  }

  Widget _userInfo() {
    return SizedBox();
  }

  void _handleGoogleSignIn(){
    try{
      GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
      _auth.signInWithProvider(_googleAuthProvider);
    }catch(error){
      print(error);
    }
  }
}
