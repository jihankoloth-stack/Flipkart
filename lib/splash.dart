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
        builder: ((context) =>Loginscreen() ),
         
         )
        );
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[500],
      body: Center(
        child: Container(
          
          // color:Colors.black,
          decoration: BoxDecoration(
          color: Colors.yellow,
          ),
    
          height: 180,
          width: 180,
          
          child: Image.asset("assets/images/flipkart.png",
          width: 40,
          height:40 ,
          
          fit: BoxFit.contain,
          ),
        ),

        ),
      
    );
  }
}