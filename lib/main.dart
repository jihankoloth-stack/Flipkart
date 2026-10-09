import 'package:flipkart_ui/splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(JinuApp());
}
class JinuApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"JKApp",
      home:Splashscreen(),
    );
  }
}