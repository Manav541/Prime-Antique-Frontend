import 'package:flutter/material.dart';
import 'package:prime_antique/pages/productPage.dart';

class categoryWidget extends StatefulWidget {
  const categoryWidget({Key? key}) : super(key: key);

  @override
  State<categoryWidget> createState() => _categoryWidgetState();
}

class _categoryWidgetState extends State<categoryWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i=1; i<10; i++)
          InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/$i.jpg",height: 40, width: 40,),
                  Text("Minion", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xFF4C53A5)),),
                ],
              ),
            ),
            onTap: () {
              productPage();
            },
          )
        ],
      ),
    );
  }
}
