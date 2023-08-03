import 'package:flutter/material.dart';
import 'package:prime_antique/pages/loginPage.dart';

class userInterface extends StatefulWidget {
  const userInterface({Key? key}) : super(key: key);

  @override
  State<userInterface> createState() => _userInterfaceState();
}

class _userInterfaceState extends State<userInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xFF4C53A5),
      ),
      body: Center(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(child: Text("K")),
                accountName: Text("Krushil"),
                accountEmail: Text("krushil@gmail.com")),
            Card(
              child: ListTile(
                leading: Icon(Icons.person_outline),
                title: Text("Edit Profile"),
                onTap: (){},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Wishlist"),
                onTap: (){},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_cart_checkout),
                title: Text("Your Order "),
                onTap: (){},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: (){},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Sign Out"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return user_login();
                  },));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
