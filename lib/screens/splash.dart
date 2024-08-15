
import 'package:flutter/material.dart';
import 'package:myproject1/screens/login_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
        },
        child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color.fromRGBO(211, 184, 223, 1),
          child: Column(
            children: [
              SizedBox(height: 320,),
              Text("eCommerce",style: TextStyle(color: Color.fromRGBO(96, 3, 139, 1),fontSize: 40),),
              Text("App UI Kit",style: TextStyle(color: Color.fromRGBO(96, 3, 139, 1),fontSize: 45,fontWeight: FontWeight.w700),),
        
            ],
          ),
        ),
      ),
    );
  }
}