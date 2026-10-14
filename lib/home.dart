import 'package:flipkart_ui/accoundpage.dart';
import 'package:flipkart_ui/bottomnavi.dart';
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

             GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),

              children: [
                Card(
                  elevation: 3,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child:Center(
                            child: Image.asset("assets/images/football.jpg",),
                          ),
                           ),
                           SizedBox(height: 2,),
                           Text("FootBall",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                           ),
                           ),
                           SizedBox(height: 3,),
                           Text(" ₹5000",
                           style: TextStyle(fontSize: 15),

                           ),
                           Row(
                            children: [
                              Icon(Icons.star,color:Colors.orange,size: 18,),
                              Text("4.5")
                            ],
                           ),
                      

                      ],
                    ),
                    ),
                ),
                     Card(
                            elevation: 3,
                            child: Padding(
                              padding:EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child:Center(
                                      child: Image.asset("assets/images/glass women.jpg",),
                                    ),
                                 ),
                                 SizedBox(height: 5,),
                                 Text("Sunglass: girls",
                                 style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                 ),
                                 ),
                                 SizedBox(height: 5,),
                                 Text(" ₹2000",
                                 style: TextStyle(
                                  fontSize: 15,
                                 ),
                                 ),
                                 SizedBox(height: 5,),
                                 Row(
                                  children: [
                                 Icon(Icons.star,color:Colors.orange,size:18 ,),
                                 Text("4.5")

                                  ],
                                 ),
                                ],
                              ),
                               ),
                           ),
                           Card(
                            elevation: 3,
                            child: Padding(
                              padding:EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child:Center(
                                    child: Image.asset("assets/images/sun glass.webp"),
                                    
                                    ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("Sunglass: boys",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    SizedBox(height:5),
                                    Text(" ₹2499",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color:Colors.orange,size: 18,),
                                        Text("5.5")
                                      ],
                                    ),
                                ],
                              ), 
                              ),
                           ),
                      Card(
                        elevation: 3,
                        child: Padding(
                          padding:EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                child: Image.asset("assets/images/lipstik.jpg") 

                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("Lipstick",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              SizedBox(height: 5,),
                              Text("₹999",
                              style: TextStyle(
                                fontSize: 15
                              ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,color:Colors.orange,size: 18,),
                                  Text("4.5"),
                                ],
                              ),
                              
                            ],
                          ),

                          ),
                      ),Card(
                        elevation: 3,
                        child: Padding(
                          padding:EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                child: Image.asset("assets/images/man shert.jpg") 

                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("cotton shirt ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              SizedBox(height: 5,),
                              Text("₹1999",
                              style: TextStyle(
                                fontSize: 15
                              ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,color:Colors.orange,size: 18,),
                                  Text("4.5"),
                                ],
                              ),
                              
                            ],
                          ),

                          ),
                      ),
                      Card(
                        elevation: 3,
                        child: Padding(
                          padding:EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                child: Image.asset("assets/images/shoe man.jpg",) 

                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("Air f1",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              SizedBox(height: 5,),
                              Text("₹2999",
                              style: TextStyle(
                                fontSize: 15
                              ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,color:Colors.orange,size: 18,),
                                  Text("5.5"),
                                ],
                              ),
                              
                            ],
                          ),

                          ),
                      ),
                      Card(
                        elevation: 3,
                        child: Padding(
                          padding:EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                child: Image.asset("assets/images/shoe women.jpg") 

                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("Puma: girls sneakers",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              SizedBox(height: 5,),
                              Text("₹1999",
                              style: TextStyle(
                                fontSize: 15
                              ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,color:Colors.orange,size: 18,),
                                  Text("4.5"),
                                ],
                              ),
                              
                            ],
                          ),

                          ),
                      ),
                      Card(
                        elevation: 3,
                        child: Padding(
                          padding:EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                child: Image.asset("assets/images/watch women.jpg") 

                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("Watches: girls",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              SizedBox(height: 5,),
                              Text("₹499",
                              style: TextStyle(
                                fontSize: 15
                              ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,color:Colors.orange,size: 18,),
                                  Text("4.5"),
                                ],
                              ),
                              
                            ],
                          ),

                          ),
                      ),
                      Card(
                        elevation: 3,
                        child: Padding(
                          padding:EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                child: Image.asset("assets/images/watche rolax.jpg") 

                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("Watches: Rolax",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              SizedBox(height: 5,),
                              Text("₹14000",
                              style: TextStyle(
                                fontSize: 15
                              ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,color:Colors.orange,size: 18,),
                                  Text("5.5"),
                                ],
                              ),
                              
                            ],
                          ),

                          ),
                      ),
                      Card(
                        elevation: 3,
                        child: Padding(
                          padding:EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                child: Image.asset("assets/images/woman drass.jpg") 

                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("Gingham Midi Dress",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              SizedBox(height: 5,),
                              Text("₹1500",
                              style: TextStyle(
                                fontSize: 15
                              ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,color:Colors.orange,size: 18,),
                                  Text("4.5"),
                                ],
                              ),
                              
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