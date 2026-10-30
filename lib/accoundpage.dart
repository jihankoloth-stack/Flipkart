import 'package:flutter/material.dart';

class Accountpage extends StatefulWidget {
  const new({super.key});

  @override
  State<Accountpage> createState() => _AccountpageState();
}

class _AccountpageState extends State<Accountpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        title: Text(
          "My Account",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          // user information card
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, size: 50, color: Colors.white),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Jihan",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "jihan@gmail.com",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "My Orders",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, size: 15),
                    onTap: () {},
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.favorite_border, color: Colors.red),
                    title: Text(
                      "Wishlist",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, size: 15),
                    onTap: () {},
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(
                      Icons.notifications_none,
                      color: Colors.orange,
                    ),
                    title: Text(
                      "Notifications",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, size: 15),
                    onTap: () {},
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.red),
                    title: Text(
                      "Logout",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, size: 15),
                    onTap: () {},
                  ),
                  Divider(height: 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
