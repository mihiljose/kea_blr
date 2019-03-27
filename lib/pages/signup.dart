import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kea_blr/services/usermanagement.dart';

class signUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {

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
              TextField(
                decoration: InputDecoration(hintText: "Email"),
                onChanged: (value){
                  setState(() {
                    email=value;
                  });
                },
              ),

              SizedBox(height: 15.0,),

              TextField(
                decoration: InputDecoration(hintText: "Password"),
                onChanged: (value){
                  setState(() {
                    password=value;
                  });
                },
              ),

              SizedBox(height: 20.0,),

              RaisedButton(
                child: Text("Sign Up"),
                shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                color: Colors.green,
                textColor: Colors.white,
                elevation: 7.0,
                onPressed: (){
                  FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((signedInUser){
                    userManagement().storeNewUser(signedInUser, context);
                  }).catchError((e){
                    print(e);
                  });
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
