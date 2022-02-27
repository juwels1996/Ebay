import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled1/exercise/homepages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth auth = FirebaseAuth.instance;

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                onPressed: () {
                  print(
                      "sssssssssssssssssssssssssssssssssssssssssssssssssssss");
                  login();
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 32),
                ),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: () async {
                  final GoogleSignInAccount? googleUser =
                  await _googleSignIn.signOut();
                },
                child: Text(
                  "Log out",
                  style: TextStyle(fontSize: 32,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void login() async {
    try {
      print("Start");
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
      await googleUser!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      print("token isssssssssssssssss${credential.token}"); //login

      User? user = FirebaseAuth.instance.currentUser;
      user = (await auth.signInWithCredential(credential)).user;
      print("user name is ${user!.displayName}");

      firestore.collection("products").doc(user.uid).set({
        "displayName": user.displayName,
        "email": user.email,
        "uid": user.uid,
        "photoUrl": user.photoURL,
        "lastSignIn": DateTime.now(),
      });
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage()));
    } catch (e) {
      print("problem is $e");
    }
  }
}
