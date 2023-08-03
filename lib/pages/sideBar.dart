import 'package:flutter/material.dart';

class sideBar extends StatefulWidget {
  const sideBar({Key? key}) : super(key: key);

  @override
  State<sideBar> createState() => _sideBarState();
}

class _sideBarState extends State<sideBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PA Shop",
          style: TextStyle(color: Color(0xFF4C53A5),fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF4C53A5)),
              currentAccountPicture: CircleAvatar(child: Text("K")),
              accountName:
                  Text("Krushil", style: TextStyle(color: Colors.white)),
              accountEmail: Text('')),
          Card(
            child: ListTile(
              leading: Icon(Icons.border_all),
              title: Text("Categories"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart_checkout),
              title: Text("Your Orders"),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
