import 'package:flutter/material.dart';

class productAppBar extends StatefulWidget {
  const productAppBar({Key? key}) : super(key: key);

  @override
  State<productAppBar> createState() => _productAppBarState();
}

class _productAppBarState extends State<productAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Product",
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5)),
          ),
        ),
        Spacer(),
        InkWell(
          onTap: (){},
          child: Icon(
            Icons.favorite_border,
            color: Colors.red,
            size: 30,
          ),
        )
      ]),
    );
  }
}
