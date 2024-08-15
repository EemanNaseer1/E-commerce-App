
import 'package:flutter/material.dart';
import 'package:myproject1/products/categorie.dart';
import 'package:myproject1/products/popular_product.dart';
import 'package:myproject1/screens/profile_screen.dart';

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
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.menu)),
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
          ]),//SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Category",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                ),
                Container(
                  child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Categorie()));  
                  }, child: Text("See All")),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 40,
                  height: 30,
                  decoration: BoxDecoration(color: Color.fromRGBO(170, 20, 240, 1),),
                  child: TextButton(onPressed: (){}, child: Text("All",style: TextStyle(color: Colors.white,fontSize: 10),),
                  ),),
                  Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(color: Color.fromRGBO(242, 242, 242, 1),),
                  child: TextButton(onPressed: (){}, child: Text("Electronic",style: TextStyle(color: Colors.black,fontSize: 10),),
                  ),),Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(color: Color.fromRGBO(242, 242, 242, 1),),
                  child: TextButton(onPressed: (){}, child: Text("Fashion",style: TextStyle(color: Colors.black,fontSize: 10),),
                  ),),Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(color: Color.fromRGBO(242, 242, 242, 1),),
                  child: TextButton(onPressed: (){}, child: Text("Shoes",style: TextStyle(color: Colors.black,fontSize: 10),),
                  ),),Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(color: Color.fromRGBO(242, 242, 242, 1),),
                  child: TextButton(onPressed: (){}, child: Text("Furniture",style: TextStyle(color: Colors.black,fontSize: 10),),
                  ),),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,top: 20),
                  child: Text("Popular Products",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PopularProduct()));
                  }, child: Text("See All")),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 280,
                       color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    Positioned(
                      left: 145,
                      child: Container(
                        child: Icon(Icons.favorite_border_outlined),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 15,
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/bag.png"),
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
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    Positioned(
                      left: 145,
                      child: Container(
                        child: Icon(Icons.favorite_border_outlined),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 15,
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/headphone.png"),
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
                  ],
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,top: 20),
                  child: Text("Latest Products",style: TextStyle(fontSize: 17),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextButton(onPressed: (){}, child: Text("See All")),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 350,
                  height: 98,
                  child: Image.asset("assets/images/card.png"),
                ),
              ],
            ),
          ],
         ),
       ),
     ),
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(icon: IconButton(
                  onPressed: () {
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Card()));
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