import 'dart:async';

import 'package:flipkart_ui/login.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    
    Timer(
      const Duration(seconds: 4),(){
    Navigator.pushReplacement(
      context,
       MaterialPageRoute(
        builder: ((context) =>Loginscreen() ),)
        );
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Container(
          
          // color:Colors.black,
          decoration: BoxDecoration(
          color: Colors.black,
          boxShadow:[ BoxShadow(color: Colors.black,
          offset: Offset(5, 5),
          blurRadius: 30,
          
          ),
          ],
        
          ),
    
          
          width: 257,
          height: 257,
          child: Image.asset("assets/images/flipkart.png"),
        ),

      ),
      
    );
  }
}