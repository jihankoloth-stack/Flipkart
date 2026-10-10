import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("assets/images/flip.png",
            width: 45,
            height: 50,
            ),
            SizedBox(width: 0,),
            Text("Flipkart",
            style: TextStyle(
            fontWeight: FontWeight.bold,
           fontStyle: FontStyle.normal,
           color: Colors.white,
            ),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        shape:RoundedRectangleBorder(borderRadius:BorderRadius.vertical(bottom: Radius.circular(20),),
        ) ,
           
      ),
      body: SingleChildScrollView(
       
         child:  Padding(
            padding:EdgeInsets.all(20),
            child: Column( 
              children: [
                TextField(
              
              decoration: InputDecoration(
                hintText: "Search For Products",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
           SizedBox ( height: 20,),
          
           Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset("assets/images/flipkart banner.jpg",
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
              
              ),
            ),
           ),
          
           SizedBox(height: 20,),
          
           Text("Categories",
           style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 15,
           ),
           ),
           
           SizedBox(height: 20,),
          
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                IconButton(onPressed: (){},
                 icon:Icon(Icons.phone_android,
                 size: 35,color: Colors.blue,),
                 
                 ),
                 SizedBox(height: 5,),
                 Text("Mobiles")
                
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed:(){} ,
                     icon: Icon(Icons.laptop,
                     size: 35,
                     color: Colors.blue,),
                     ),
                     SizedBox(height: 5,),
                     Text("Electronics"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed:(){} ,
                     icon: Icon(Icons.shopping_bag,
                     size: 35,
                     color: Colors.blue,),
                     ),
                     SizedBox(height: 5,),
                     Text("Fashion"),
          
                ],
              ),
                Column(
                children: [
                  IconButton(
                    onPressed:(){} ,
                     icon: Icon(Icons.shopping_basket,
                     size: 35,
                     color: Colors.blue,),
                     ),
                     SizedBox(height: 5,),
                     Text("Grocery"),
                     
                ],
              ),

            ],
           ),
           SizedBox(height: 15,),
           Row(
            children: [
              Expanded(
                child:Card(
                 child: Padding(
                  padding:EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.phone_android,
                      size: 50,
                      color:Colors.black,
                      ),
                      SizedBox(height: 5,),
                      Text("Smartphone",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      ),
                      SizedBox(height: 6,),
                      Text("12,999",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                      ),
                      Text("20% off",
                      style: TextStyle(color: Colors.green[700]),
                      ),
                    ],
                  ),
                   ),
                ),
                 ),
                  Expanded(
                child:Card(
                 child: Padding(
                  padding:EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.headphones,
                      size: 50,
                      color:Colors.black,
                      ),
                      SizedBox(height: 5,),
                      Text("Headphone",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      ),
                      SizedBox(height: 6,),
                      Text("999",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                      ),
                      Text("10% off",
                      style: TextStyle(color: Colors.green[700]),
                      ),
                    ],
                  ),
                   ),
                ),
                 ),
                 

            ],
           ),
          
          ],
            ),
              
          ),
        
      ),
         
      );
    
  }
}