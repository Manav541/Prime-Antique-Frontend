import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:prime_antique/pages/homePage.dart';

class user_login extends StatefulWidget {
  const user_login({Key? key}) : super(key: key);

  @override
  State<user_login> createState() => _user_loginState();
}

class _user_loginState extends State<user_login> {
  String getData='';
  Future fetchData() async {
    http.Response response;
    response = await http.get(Uri.parse("http://192.168.107.130:8000/api_show/"));
    if (response.statusCode == 200) {
      setState(() {
        getData = response.body;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                padding: EdgeInsets.only(left: 20, top: 160),
                child: Text(
                  "Login in\nPrime Antique",
                  style: TextStyle(
                      fontSize: 33,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                )),
            SingleChildScrollView(
              //For Easily Movable widgets in format.
              child: Container(
                padding: EdgeInsets.only(
                    //top: MediaQuery.of(context).size.height * 0.5,
                    top: 380,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Enter Email',
                          fillColor: Colors.grey.shade100,
                          //Filling shade inside TextField
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                25), //Borders will be rounded
                          )),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Enter Password',
                          fillColor: Colors.grey.shade100,
                          //Filling shade inside TextField
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                25), //Borders will be rounded
                          )),
                      obscureText: true, //For Hiding Password
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade700,
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return homePage();
                              },));
                            },
                            icon: Icon(Icons.arrow_forward, size: 30),
                            color: Colors.white,
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'registrationPage');
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                              ),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forget Password",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                              ),
                            ))
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
