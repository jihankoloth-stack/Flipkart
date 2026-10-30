import 'package:flutter/material.dart';

class Orderpage extends StatefulWidget {
  const new({super.key});

  @override
  State<Orderpage> createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Orders",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search your order here",
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.tune, size: 20),
                SizedBox(width: 3),
                Text("Filters"),
              ],
            ),
            Divider(height: 1, thickness: 2),

            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              leading: Container(
                width: 75,
                height: 95,
                color: Colors.grey.shade400,
                child: Image.asset(
                  "assets/images/watche rolax.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                "Delivery expected by july 21",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text("Rolax og. color silver and green..."),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            Divider(height: 3),

            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              leading: Container(
                width: 85,
                height: 95,
                child: Image.asset(
                  "assets/images/shoe man.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                "Cancelled Today, Oct 29",
                style: TextStyle(color: Colors.red),
              ),
              subtitle: Text("Nike Air F1 white and black..."),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            Divider(height: 3),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 15),
              color: Colors.white,
              child: Center(
                child: Text(
                  "No more orders",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            Divider(height: 3),
          ],
        ),
      ),
    );
  }
}
