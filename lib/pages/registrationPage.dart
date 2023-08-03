import 'package:flutter/material.dart';

class user_register extends StatefulWidget {
  const user_register({Key? key}) : super(key: key);

  @override
  State<user_register> createState() => _user_registerState();
}

class _user_registerState extends State<user_register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        //appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,),
        body: Stack(
          children: [
            Container(
                padding: EdgeInsets.only(left: 20, top: 80),
                child: Text(
                  "Create\nAccount",
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
                    top: 180,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Name',
                          fillColor: Colors.blue.shade100,
                          //Filling shade inside TextField
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                25), //Borders will be rounded
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          fillColor: Colors.blue.shade100,
                          //Filling shade inside TextField
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                25), //Borders will be rounded
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          fillColor: Colors.blue.shade100,
                          //Filling shade inside TextField
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                25), //Borders will be rounded
                          )),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Contact',
                          fillColor: Colors.blue.shade100,
                          //Filling shade inside TextField
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                25), //Borders will be rounded
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Address',
                          fillColor: Colors.blue.shade100,
                          //Filling shade inside TextField
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                25), //Borders will be rounded
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Gender',
                          fillColor: Colors.blue.shade100,
                          //Filling shade inside TextField
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                25), //Borders will be rounded
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade700,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward,size: 30),
                            color: Colors.white,
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'loginPage');
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize:20,
                                color: Colors.black,
                              ),
                            )),
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
