import 'package:flutter/material.dart';
import 'package:myproject1/products/product_detail.dart';
import 'package:myproject1/screens/home_screen.dart';
import 'package:myproject1/screens/profile_screen.dart';

class PopularProduct extends StatefulWidget {
  const PopularProduct({super.key});

  @override
  State<PopularProduct> createState() => _PopularProductState();
}

class _PopularProductState extends State<PopularProduct> {
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
          // height: double.infinity,
          // width: double.infinity,
          color: Color.fromRGBO(245, 245, 245, 1),
          child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(15)),
                    ),
                    Positioned(
                      left: 145,
                      child: Container(
                        child: Icon(Icons.favorite,color: Color.fromRGBO(233, 1, 1, 1)),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 15,
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/cap.png"),
                      ),
                    ),
                     Positioned(
                      top: 170,
                      left: 10,
                       child: Column(
                          children: [
                             Text("Leather Women Bag"),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Image.asset("assets/images/Score.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Text("\$135.00",style: TextStyle(color: Color.fromRGBO(170, 20, 240, 1)),),
                            ),             
                          ],
                        ),
                     ),
                  ],
                ),
                 Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(15)),
                    ),
                    Positioned(
                      left: 145,
                      child: Container(
                        child: Icon(Icons.favorite,color: Color.fromRGBO(233, 1, 1, 1)),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 15,
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/flower.png"),
                      ),
                    ),
                     Positioned(
                      top: 170,
                      left: 10,
                       child: Column(
                          children: [
                             Text("Wireless Headphone"),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Image.asset("assets/images/Score.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Text("\$65.00",style: TextStyle(color: Color.fromRGBO(170, 20, 240, 1)),),
                            ),             
                          ],
                        ),
                     ),
                   ])
                  ],
                ),SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(15)),
                    ),
                    Positioned(
                      left: 145,
                      child: Container(
                        child: Icon(Icons.favorite,color: Color.fromRGBO(233, 1, 1, 1)),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 15,
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/bag2.png"),
                      ),
                    ),
                     Positioned(
                      top: 170,
                      left: 10,
                       child: Column(
                          children: [
                             Text("Leather Women Bag"),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Image.asset("assets/images/Score.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Text("\$135.00",style: TextStyle(color: Color.fromRGBO(170, 20, 240, 1)),),
                            ),             
                          ],
                        ),
                     ),
                  ],
                ), Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(15)),
                    ),
                    Positioned(
                      left: 145,
                      child: Container(
                        child: Icon(Icons.favorite,color: Color.fromRGBO(233, 1, 1, 1)),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 15,
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/clock.png"),
                      ),
                    ),
                     Positioned(
                      top: 170,
                      left: 10,
                       child: Column(
                          children: [
                             Text("Leather Women Bag"),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Image.asset("assets/images/Score.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Text("\$135.00",style: TextStyle(color: Color.fromRGBO(170, 20, 240, 1)),),
                            ),             
                          ],
                        ),
                     ),
                  ],
                ),
                  ],
                ),SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(15)),
                    ),
                    Positioned(
                      left: 145,
                      child: Container(
                        child: Icon(Icons.favorite,color: Color.fromRGBO(233, 1, 1, 1),),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 15,
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/watch1.png"),
                      ),
                    ),
                     Positioned(
                      top: 170,
                      left: 10,
                       child: Column(
                          children: [
                             Text("Leather Women Bag"),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Image.asset("assets/images/Score.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Text("\$135.00",style: TextStyle(color: Color.fromRGBO(170, 20, 240, 1)),),
                            ),             
                          ],
                        ),
                     ),
                  ],
                ), Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(15)),
                    ),
                    Positioned(
                      left: 145,
                      child: Container(
                        child: Icon(Icons.favorite,color: Color.fromRGBO(233, 1, 1, 1)),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 15,
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/shoe2.png"),
                      ),
                    ),
                     Positioned(
                      top: 170,
                      left: 10,
                       child: Column(
                          children: [
                             const Text("Leather Women Bag"),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Image.asset("assets/images/Score.png"),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 80),
                              child: Text("\$135.00",style: TextStyle(color: Color.fromRGBO(170, 20, 240, 1)),),
                            ),             
                          ],
                        ),
                     ),
                  ],
                ),
                  ],
                ),SizedBox(
                  height: 10,
                ),
               ]
              )
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Profile()));
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