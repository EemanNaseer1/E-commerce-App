
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myproject1/screens/home_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

 final TextEditingController email1Controller = TextEditingController();
 final TextEditingController password1Controller = TextEditingController();
 
 signupfunction()async{
  try {
    final credentail =
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email1Controller.text
    , password: password1Controller.text
    );
    print(credentail.runtimeType);
  } on FirebaseAuthException catch (e) {
    if (e.code == "eemannaseer@gmail.com" && e.code == "PASSWORD"){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    } else if (e.code != "eemannaseer@gmail.com" && e.code != "PASSWORD"){
      print("Email and Password does not exist");
    } else{
      print(e.code);
    }
    } catch (e) {
      print(e);
  }
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
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(left: 20),
              width: 300,
              height: 60,
            ),
            Container(
              margin: EdgeInsets.only(top: 10,right: 220),
              child: Text("Email"),
            ),
            Container(
              //margin: EdgeInsets.only(left: 20),
              padding: EdgeInsets.only(left: 10),
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: TextField(
               controller: email1Controller,
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
              //margin: EdgeInsets.only(left: 20),
              padding: EdgeInsets.only(left: 10),
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: TextField(
               controller: password1Controller,
               decoration: InputDecoration(
                label: Text("theBirdiSth3W0rD"),
               ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30,),
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(170, 20, 240, 1),
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
              }, child: Text("Sign Up",style: TextStyle(color: Colors.white),)),
            ),
          ]
      ),
       )
    );
  }
}