import 'package:flipkart_ui/home.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();

}

class _LoginscreenState extends State<Loginscreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.grey.shade400,
                offset: Offset(0, 5),
                blurRadius: 15,
                ),
              
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("LOGIN",
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                
                ),
                ),
                SizedBox(height: 5,),
                // subtitle
                Text("Get access to your Orders, Wishlist and Recommendation",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,

                ),
                ),
                SizedBox(height: 35,),

                 Text("Enter your Email",
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                 ),
                 ),
                 SizedBox(height: 8,),
                 TextField(
              
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "enter your Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20,),
                    ),
                    labelText:"Email",

                  ),
                 ),

                 SizedBox(height: 20,),

                 TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.lock_outline)
                  ),
                 ),
                 SizedBox(height: 10,),

                 Align(alignment: Alignment.centerRight,        
                child:  TextButton(onPressed: (){},
                  child:Text("forgot?",
                  style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.red[300],
                  ),
                  ),
                  ),
                 ),
                 SizedBox(height:25),

                 Row(
                  children: [
                    Expanded(
                      child:SizedBox(
                        height: 55,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                            MaterialPageRoute(
                            builder:(context)=>Homepage() ),

                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white,
                            elevation: 15,
                            shadowColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            )
                          ),
                          
                           child: Text("LOGIN",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                           ),
                           )
                           ),
                      ),
                      ),
                      SizedBox(width: 15,),
                      Expanded(
                        child:SizedBox(height: 55,
                        child: OutlinedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.blueAccent,
                          side:BorderSide(
                            color:Colors.blueAccent,
                          )
                        ),
                         child: Text("SIGN UP",
                         style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                         ),
                         )
                         ),
                        ),
                        
                        ),
                 
                  ],
                 ),
                 SizedBox(height: 30,),

              
              ],
            ),
          ),
        ),
      ),

    );
  }
}