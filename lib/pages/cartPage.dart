import 'package:flutter/material.dart';
import 'package:prime_antique/widgets/cartAppBar.dart';
import 'package:prime_antique/widgets/cartBottomNavigator.dart';
import 'package:prime_antique/widgets/cartItemSample.dart';

class cartPage extends StatefulWidget {
  const cartPage({Key? key}) : super(key: key);

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        cartAppBar(),
        Container(
          height: 700,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )),
          child: Column(children: [
            cartItemSample(),

          ]),
        )
      ]),
      bottomNavigationBar: cartBottomNavigator(),
    );
  }
}
