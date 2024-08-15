import 'package:flutter/material.dart';
import 'package:myproject1/products/cart.dart';
import 'package:myproject1/products/popular_product.dart';
import 'package:myproject1/screens/home_screen.dart';
import 'package:myproject1/screens/profile_screen.dart';

class Categorie extends StatefulWidget {
  const Categorie({super.key});

  @override
  State<Categorie> createState() => _CategorieState();
}

class _CategorieState extends State<Categorie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        actions: [],
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 65),
              child: Text("Category")),
              Container(
                padding: EdgeInsets.only(left: 85),
                child: Icon(Icons.favorite_outline),
              )
          ],
        ),  
      ),
      body: SingleChildScrollView(
       child: Container(
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
                 child: Image.asset("assets/images/Frame.jpg"), 
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
          ]),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 118,
                height: 120,
                padding: EdgeInsets.all(3),
                child: Image.asset("assets/images/bag1.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                 width: 118,
                height: 120,
                 padding: EdgeInsets.all(3),
                child: Image.asset("assets/images/watch.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                 width: 118,
                height: 120,
                 padding: EdgeInsets.all(3),
                child: Image.asset("assets/images/shoes1.png"),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 118,
                height: 120,
                padding: EdgeInsets.all(3),
                child: Image.asset("assets/images/jewelry.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                 width: 118,
                height: 120,
                 padding: EdgeInsets.all(3),
                child: Image.asset("assets/images/sport.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                 width: 118,
                height: 120,
                 padding: EdgeInsets.all(3),
                child: Image.asset("assets/images/music.png"),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 118,
                height: 120,
                padding: EdgeInsets.all(3),
                child: Image.asset("assets/images/gift.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                 width: 118,
                height: 120,
                 padding: EdgeInsets.all(3),
                child: Image.asset("assets/images/plant.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                 width: 118,
                height: 120,
                 padding: EdgeInsets.all(3),
                child: Image.asset("assets/images/phone.png"),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 118,
                height: 120,
                padding: EdgeInsets.all(3),
                child: Image.asset("assets/images/furniture.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                 width: 118,
                height: 120,
                 padding: EdgeInsets.all(3),
                child: Image.asset("assets/images/cosmetic.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                 width: 118,
                height: 120,
                 padding: EdgeInsets.all(3),
                child: Image.asset("assets/images/hobby.png"),
              )
            ],
          ),
            ]
            ) 
           )
          ),
          bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(icon: IconButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                  },
                  icon: Icon(
                    Icons.home_outlined,
                    color: Color.fromRGBO(154, 153, 152, 1),
                  ),
                ),label: ""),
                BottomNavigationBarItem(icon: IconButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> PopularProduct()));
                  },
                  icon: Icon(
                    Icons.favorite_outline,
                    color: Color.fromRGBO(154, 153, 152, 1),
                  ),
                ),label: ""),BottomNavigationBarItem(icon: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Color.fromRGBO(154, 153, 152, 1),
                  ),
                ),label: ""),BottomNavigationBarItem(icon: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
                  },
                  icon: Icon(
                    Icons.person_outline,
                    color: Color.fromRGBO(154, 153, 152, 1),
                  ),
                ),
              label: "")],
     ),
    );
  }
}