import 'package:flutter/material.dart';

class FoodName extends StatefulWidget {
  const FoodName({Key key}) : super(key: key);

  @override
  _FoodNameState createState() => _FoodNameState();
}

class _FoodNameState extends State<FoodName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Items('assets/sha.jpg', 'Sharwarma', '\$5'),
          Items('assets/hot.jpg', 'Hot Dog', '\$6'),
          Items('assets/ham.jpeg', 'Burger', '\$21'),
          Items('assets/ice.jpg', 'Ice cream', '\$5'),
        ],
      ),
    );
  }
  Widget Items(String img, String text, String dolls){
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    img
                ),
              )
          ),
        ),
        SizedBox(width: 12,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 14,
              ),),
            SizedBox(height: 4,),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
              ],
            ),
            SizedBox(height: 6,),
            Text(
              dolls,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ],
        ),
        SizedBox(width: 160,),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
          ),
          child: Center(
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),
        )

      ],
    );

  }
}

class Content extends StatefulWidget {
  const Content({Key key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          tems('assets/ham2.jpeg', 'Burger', '\$6'),
          tems('assets/chick.jpg', 'Chicken', '\$15'),
          tems('assets/ice.jpg', 'Ice cream', '\$6'),
          tems('assets/sha.jpg', 'Sharwarma', '\$5'),
        ],
      ),
    );
  }
  Widget tems(String img, String text, String dolls){
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    img
                ),
              )
          ),
        ),
        SizedBox(width: 12,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 14,
              ),),
            SizedBox(height: 4,),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
              ],
            ),
            SizedBox(height: 6,),
            Text(
              dolls,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ],
        ),
        SizedBox(width: 160,),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
          ),
          child: Center(
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),
        )

      ],
    );

  }
}



class Foody extends StatefulWidget {
  const Foody({Key key}) : super(key: key);

  @override
  _FoodyState createState() => _FoodyState();
}

class _FoodyState extends State<Foody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Foodii('assets/pizza.png', 'Pizza', '\$12'),
          Foodii('assets/donut.png', 'Hammer', '\$22'),
          Foodii('assets/chic.png', 'Chicky', '\$34'),
          Foodii('assets/burger.png', 'Burger', '\$26'),

        ],
      ),
    );
  }
  Widget Foodii(String img, String text, text1){
    return  Container(
      height: 100,
      width: 250,
      child: Row(
        children: [
          Container(
            height: 75,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFFFFCCBC),
            ),
            child: Image.asset(img, height: 50, width: 50,),
          ),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 17,),
              Text(text,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 14,
                ),),
              SizedBox(height: 4,),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 14,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 14,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 14,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 14,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 14,
                  ),
                ],
              ),
              SizedBox(height: 6,),
              Text(
                text1,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          SizedBox(width: 170,),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
            child: Center(
              child: Icon(
                Icons.add,
                size: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

