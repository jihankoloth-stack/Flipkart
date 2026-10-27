import 'package:flipkart_ui/accoundpage.dart';
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
        actions: [
          IconButton(onPressed: (){
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder:(context)=>Bottomnavpag() ),
            //   );
          }, icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: (){
             Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>Accountpage(),
                ),
                );
            },
             icon: Icon(Icons.person_outlined),
             )
        ],
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
      body:
       SingleChildScrollView(
       
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
           Text("Products",
           style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
           ),
           ),
             SizedBox(height: 15,),

// cardss.....

             GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 0.75,


              children: [
                Card(
                  elevation: 3,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded( 
                          child:Container(
                         width: double.infinity,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.amber,
                         ),
                         child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                           child: Image.asset("assets/images/football.jpg",
                           fit: BoxFit.cover,
                           
                           ),
                         ),
                          ),
                           ),
                           SizedBox(height: 8,),
                           Text("FootBall",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                           ),
                           ),
                           SizedBox(height: 3,),
                           Text("3 Colors",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,

                           ),
                           ),
                           SizedBox(height: 3,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("⭐4.5"),
                              Container(
                                width: 60,
                                height: 30,
                                child: OutlinedButton(onPressed: (){},
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.all(1),
                                  backgroundColor: Colors.grey.shade300,
                                  foregroundColor: Colors.black,
                                  
                                ),
                                 child: Text("\$40.00")
                                 ),
                              )
                            ],
                           )
                      

                      ],
                    ),
                    ),
                ),
                Card(
                  elevation: 3,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded( 
                          child:Container(
                         width: double.infinity,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.amber,
                         ),
                         child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                           child: Image.asset("assets/images/sun glass.webp",
                           fit: BoxFit.cover,
                          height: 20,
                           ),
                         ),
                          ),
                           ),
                           SizedBox(height: 8,),
                           Text("Sun glass",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                           ),
                           ),
                           SizedBox(height: 3,),
                           Text("5 Colors",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,

                           ),
                           ),
                           SizedBox(height: 3,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("⭐3.5"),
                              Container(
                                width: 60,
                                height: 30,
                                child: OutlinedButton(onPressed: (){},
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.all(1),
                                  backgroundColor: Colors.grey.shade300,
                                  foregroundColor: Colors.black,
                                  
                                ),
                                 child: Text("\$20.00")
                                 ),
                              )
                            ],
                           )
                      

                      ],
                    ),
                    ),
                ),
                Card(
                  elevation: 3,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded( 
                          child:Container(
                         width: double.infinity,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.amber,
                         ),
                         child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                           child: Image.asset("assets/images/watche rolax.jpg",
                           fit: BoxFit.cover,
                           
                           ),
                         ),
                          ),
                           ),
                           SizedBox(height: 8,),
                           Text("Rolax watch",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                           ),
                           ),
                           SizedBox(height: 3,),
                           Text("3 Colors",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,

                           ),
                           ),
                           SizedBox(height: 3,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("⭐5.5"),
                              Container(
                                width: 60,
                                height: 30,
                                child: OutlinedButton(onPressed: (){},
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.all(1),
                                  backgroundColor: Colors.grey.shade300,
                                  foregroundColor: Colors.black,
                                  
                                ),
                                 child: Text("\$400.00")
                                 ),
                              )
                            ],
                           )
                      

                      ],
                    ),
                    ),
                ),
                Card(
                  elevation: 3,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded( 
                          child:Container(
                         width: double.infinity,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.amber,
                         ),
                         child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                           child: Image.asset("assets/images/shoe man.jpg",
                           fit: BoxFit.cover,
                           
                           ),
                         ),
                          ),
                           ),
                           SizedBox(height: 8,),
                           Text("Nike Air max",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                           ),
                           ),
                           SizedBox(height: 3,),
                           Text("2 Colors",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,

                           ),
                           ),
                           SizedBox(height: 3,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("⭐5.5"),
                              Container(
                                width: 60,
                                height: 30,
                                child: OutlinedButton(onPressed: (){},
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.all(1),
                                  backgroundColor: Colors.grey.shade300,
                                  foregroundColor: Colors.black,
                                  
                                ),
                                 child: Text("\$250.00")
                                 ),
                              )
                            ],
                           )
                      

                      ],
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