import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myproject1/screens/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

 final TextEditingController fullnameController = TextEditingController();
 final TextEditingController emailController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();

 profile(){
  List <String> fullname = [];
  List  email = [];
  List password = [];
 }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [SizedBox(height: 150,),
            Container(
              margin: EdgeInsets.only(right: 70),
              child: Image.asset("assets/images/Logo.jpg"),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,right: 200),
              child: Text("Full Name"),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(left: 20),
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: TextField(
               controller: fullnameController,
               decoration: InputDecoration(
                label: Text("Reggie James"),
               ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,right: 220),
              child: Text("Email"),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              padding: EdgeInsets.only(left: 10),
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: TextField(
               controller: emailController,
               decoration: InputDecoration(
                label: Text("reggiejames001@website.com"),
               ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,right: 200),
              child: Text("Password"),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              padding: EdgeInsets.only(left: 10),
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: TextField(
               controller: passwordController,
               decoration: InputDecoration(
                label: Text("theBirdiSth3W0rD"),
               ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30,left: 40),
              width: 250,
              height: 50,
              color: const Color.fromRGBO(170, 20, 240, 1),
              child: TextButton(onPressed: (){
              }, child: Text("Create Account",style: TextStyle(color: Colors.white),)),
            ),
            Container(
              margin: EdgeInsets.only(top: 5,left: 40),
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
              }, child: Text("Already have an account Sign In",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1))),)
              ),
          ],
        ),
      ),
    );
  }
}