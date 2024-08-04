import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 80),
              child: Text("Home")),
              Container(
                padding: EdgeInsets.only(left: 100),
                child: Icon(Icons.search),
              )
          ],
        ),  
      ),
     body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
       child: Column(
        children: [
          Stack(
            children: [
              Container(
              width: 310,
              height: 120,
              decoration: BoxDecoration(
                color: Color.fromRGBO(170, 20, 240, 1),
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
               child: Image.asset("assets/images/frame.jpg"), 
              ),
            ),
            Positioned(
              left: 150,
             top: 1,
             bottom: 1,
              child: Container(
              height: 200,
                width: 200,
                // padding: EdgeInsets.only(),
               child: Image.asset("assets/images/shoe1.png"), 
              ),
            ),
        ]),//SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("Category",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
              ),
              Container(
                child: TextButton(onPressed: (){}, child: Text("See All")),
              ),//SizedBox(height: 100,)
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(color: Color.fromRGBO(170, 20, 240, 1),),
                child: TextButton(onPressed: (){}, child: Text("All",style: TextStyle(color: Colors.white),),
                ),),
                Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(color: Color.fromRGBO(242, 242, 242, 1),),
                child: TextButton(onPressed: (){}, child: Text("Electronic",style: TextStyle(color: Colors.black),),
                ),),Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(color: Color.fromRGBO(170, 20, 240, 1),),
                child: TextButton(onPressed: (){}, child: Text("Fashion",style: TextStyle(color: Colors.black),),
                ),),Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(color: Color.fromRGBO(170, 20, 240, 1),),
                child: TextButton(onPressed: (){}, child: Text("All",style: TextStyle(color: Colors.black),),
                ),),Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(color: Color.fromRGBO(170, 20, 240, 1),),
                child: TextButton(onPressed: (){}, child: Text("All",style: TextStyle(color: Colors.black),),
                ),),
            ],
          )
        ],
       ),
     ), 
    );
  }
}