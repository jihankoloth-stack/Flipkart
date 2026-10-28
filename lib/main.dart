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

// class CheckLogin extends StatefulWidget {
//   const CheckLogin({super.key});

//   @override
//   State<CheckLogin> createState() => _CheckLoginState();
// }

// class _CheckLoginState extends State<CheckLogin> {

//   bool isLoding=true;
//   bool isLoggedin =false;

//   @override
//   void initState() {
//     super.initState();
//     CheckLogin();
//   }
  
//   Future <void>checkLogin()async{
//     final prefs= await SharedPreferences.getInstance();
//     bool status = prefs.getBool("isLoding")?? false;

//     if (!mounted);

//     setState(() {
//       isLoding=status;
//       isLoggedin=false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (isLoding){
//       return Scaffold(
//         body: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
//     }
//     if (isLoggedin){
//       return BottomNav();
//     }
//     return Splashscreen();
//   }
// }