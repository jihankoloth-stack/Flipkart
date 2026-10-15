import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  const new({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color:Colors.white,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20),),
        ),
      ),
      body: 
      SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(15),
        child: Column(
          children: [
            productCard(
              image: "assets/images/watche rolax.jpg",
               name: "Rolax og", 
               price: "₹14000", 
               rating:"5.5" ),

               SizedBox(height: 15,),

               productCard(
                image:"assets/images/football.jpg",
                 name: "Football",
                  price: "₹5000", 
                  rating: "4.5"
                  ),
            
          ],
        ),
        ),
      ),
    );
    
  }


}
Widget productCard({
    required String image,
    required String name,
    required String price,
    required String rating,
  }) {
    return Container(
    width: double.infinity,
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ]

    ),
    child: Row(
      children: [
        Image.asset(image,
        width: 100,
        height: 120,
        fit: BoxFit.contain,
        ),
        SizedBox(width: 12, ),

        Expanded(
          child:Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Text(name),
            Text(price),
            Text('⭐ $rating'),
           ],
          ),
          
           ),
      ],
    ),

    );
  }
