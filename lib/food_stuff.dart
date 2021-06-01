import 'package:flutter/material.dart';

class FoodStuff extends StatefulWidget {
  final img, text, text2, heroTag;
  FoodStuff({this.img, this.text, this.text2, this.heroTag });

  @override
  _FoodStuffState createState() => _FoodStuffState();
}

class _FoodStuffState extends State<FoodStuff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),

                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFCCBC),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(20),
           child: Text(
             widget.text.toString()
           ),
          )
        ],
      )

    );
  }
}
