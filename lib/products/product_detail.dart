import 'package:flutter/material.dart';
import 'package:myproject1/products/cart.dart';
import 'package:myproject1/screens/home_screen.dart';
import 'package:myproject1/screens/profile_screen.dart';


class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35),
              child: Text("Popular Product")),
              Container(
                padding: EdgeInsets.only(left: 30),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)),
              )
          ],
        ),  
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 50),
                child: Image.asset("assets/images/watch2.png"),
              ),SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Smart Watch",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,),)),
                            Container(
                              padding: EdgeInsets.only(right: 50),
                              child: Text("Unisex"),)
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 140),
                        child: Text("\$345.00",style: TextStyle(color: Color.fromRGBO(170, 20, 240, 1),fontSize: 18,fontWeight: FontWeight.w500),))
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 190,top: 10),
                    child: Image.asset("assets/images/star.png"),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20,right: 280,bottom: 15),
                    child: Text("Color",style: TextStyle(fontSize: 15),),),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20,)),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromRGBO(170, 20, 240, 1),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromRGBO(35, 164, 247, 1),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromRGBO(54, 52, 49, 1),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromRGBO(154, 153, 152, 1),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15,top: 20),
                      child: Image.asset("assets/images/about.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 300,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(170, 20, 240, 1),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                      }, child: const Text("Add To Cart",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),)),
                    )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(icon: IconButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
                  },
                  icon: const Icon(
                    Icons.home_outlined,
                    color: Color.fromRGBO(154, 153, 152, 1),
                  ),
                ),label: ""),
                BottomNavigationBarItem(icon: IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: Color.fromRGBO(154, 153, 152, 1),
                  ),
                ),label: ""),BottomNavigationBarItem(icon: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetail()));
                  },
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Color.fromRGBO(154, 153, 152, 1),
                  ),
                ),label: ""),BottomNavigationBarItem(icon: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Profile()));
                  },
                  icon: const Icon(
                    Icons.person_outline,
                    color: Color.fromRGBO(154, 153, 152, 1),
                  ),
                ),
              label: "")],
     ),
    );
  }
}