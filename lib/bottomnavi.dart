import 'package:flipkart_ui/accoundpage.dart';
import 'package:flipkart_ui/cartpage.dart';
import 'package:flipkart_ui/home.dart';
import 'package:flipkart_ui/orderpage.dart';
import 'package:flutter/material.dart';

class BottomNav
 extends StatefulWidget {
  const BottomNav
  ({super.key});

  @override
  State<BottomNav
  > createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  
  int currentIndex = 0;        

  final List<Widget> pages = [
    Homepage(),
    Cartpage(),
    Orderpage(),
    Accountpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: "Orders",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}