import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 90),
              child: Text("Cart",style: TextStyle(fontSize: 20),)),
              Container(
                padding: EdgeInsets.only(left: 90),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)),
              )
          ],
        ),  
      ),
      body: Container(
         color: Color.fromRGBO(245, 245, 245, 1),
         width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 350,
                  height: 118,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(child: Text("Wooden Coffee Table")),
                        Container(child: Image.asset("assets/images/Score.png")),
                        Text("\$274.00",style: TextStyle(color: Color.fromRGBO(170, 20, 240, 1)),)
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10,top: 10),
                      child: Image.asset("assets/images/view.png"),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}