import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_antique/pages/userInterface.dart';
import 'package:prime_antique/widgets/homeAppBar.dart';
import 'package:prime_antique/widgets/itemWidget.dart';
import '../widgets/categoryWidget.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          homeAppBar(),
          Container(
            //height: 200,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              //borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
            ),
            child: Column(
              children: [
                //Search Bar
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 250,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Seach Here ...",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Category
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)),
                  ),
                ),
                //Categories
                categoryWidget(),
                //ItemWidget
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)),
                  ),
                ),
                itemWidget()
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
          color: Color(0xFF4C53A5),
          height: 70,
          backgroundColor: Colors.transparent,
          items: [
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, "homePage");
          },
          child: Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, "cartPage");
          },
          child: Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return userInterface();
            },));
          },
          child: Icon(
            Icons.person_outline,
            size: 30,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
