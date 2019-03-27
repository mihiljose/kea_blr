import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kea_blr/pages/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';

/*
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';


class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final Firestore _db = Firestore.instance;

  Observable<FirebaseUser> user;
  Observable<Map<String, dynamic>> profile;
  PublishSubject loading = PublishSubject();


  AuthService() {
    user = Observable(_auth.onAuthStateChanged);

    profile = user.switchMap((FirebaseUser u) {
      if (u != null) {
        return _db
            .collection('users')
            .document(u.uid)
            .snapshots()
            .map((snap) => snap.data);
      } else {
        return Observable.just({});
      }
    });
  }


  Future<FirebaseUser> googleSignIn()async{

    loading.add(true);
    GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    FirebaseUser user = await _auth.signInWithGoogle(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
    updateUserData(user);
    loading.add(false);
    print("signed in " + user.displayName);
    return user;

  }

  void updateUserData(FirebaseUser user) async{
    DocumentReference ref = _db.collection('users').document(user.uid);

    return ref.setData({
      'uid': user.uid,
      'email': user.email,
      'photoURL': user.photoUrl,
      'displayName': user.displayName,
      'lastSeen': DateTime.now()
    }, merge: true);

  }

  void signOut(){
    _auth.signOut();
  }
}

  final AuthService authService = AuthService();

*/


class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {







  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/banner.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /*TextField(
                decoration: InputDecoration(hintText: "Email"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),
                onChanged: (value){
                  setState(() {
                    email=value;
                  });
                },
              ),*/

          TextFormField(
          decoration: InputDecoration(
            hintText: "Email",
            labelText: "Enter your Email",
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0)
            ),
          ),
        ),

              SizedBox(height: 15.0,),

             /* TextField(
                decoration: InputDecoration(hintText: "Password"),
                onChanged: (value){
                  setState(() {
                    password=value;
                  });
                },
                obscureText: true,
              ),*/

          TextFormField(
            decoration: InputDecoration(
              hintText: "Password",
              labelText: "Enter your Password",
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
              ),
            ),
          ),

              SizedBox(height: 20.0,),

              RaisedButton(
                child: Text("Login"),
                shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                color: Colors.green,
                textColor: Colors.white,
                elevation: 7.0,
                onPressed: (){
                  FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((FirebaseUser user) {
                    Navigator.of(context).pushReplacementNamed('/landingpage');
                  }).catchError((e){
                    print(e);
                  });
                },
              ),

              SizedBox(height: 10.0,),

              Text("Don\'t Have an accout?"),

              SizedBox(height: 10.0,),

              RaisedButton(
                child: Text("Sign Up"),
                shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                color: Colors.green,
                textColor: Colors.white,
                elevation: 7.0,
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> signUpPage())
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
