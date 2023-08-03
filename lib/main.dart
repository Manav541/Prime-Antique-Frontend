import 'package:flutter/material.dart';
import 'package:prime_antique/pages/cartPage.dart';
import 'package:prime_antique/pages/loginPage.dart';
import 'package:prime_antique/pages/productPage.dart';
import 'package:prime_antique/pages/registrationPage.dart';
import 'package:prime_antique/pages/homePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,//Remove Debug Banner.
    initialRoute: 'homePage',//First Page that we have to shown on app.
    routes: {
      //Pages that we created, write here.
      'loginPage': (context) => user_login(),
      'registrationPage': (context) => user_register(),
      'homePage': (context) => homePage(),
      'cartPage': (context) => cartPage(),
      'productPage': (context) => productPage(),
    },
  ));
}
