import 'package:flutter/material.dart';
import 'package:junks/foodName.dart';
import 'package:junks/food_stuff.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
class HomePage extends StatefulWidget  {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
      super.initState();
      controller = TabController(length: 4, vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 24,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/beauty.jpg'),
              radius: 18,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),

      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SEARCH FOR',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6 ,),
                Text(
                  'RECIPES',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(height: 16,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey.shade100,
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 16,
                  ),
                  filled: true,
                  fillColor: Colors.blueGrey.shade100,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 25,),

            Text(
              'Recommended',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 18,),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyItems(0xFFFFD180, 'assets/burger.png', 'Burger', '\$26'),
                  MyItems(0xFFFFF59D, 'assets/fries.png', 'Fries', '\$27'),
                  MyItems(0xFFFFCCBC, 'assets/donut.png', 'Hammer', '\$22'),
                  MyItems(0xFFB2DFDB, 'assets/pizza.png', 'Pizza', '\$37'),
                ],
              ),
            ),
            SizedBox(height: 30),

            TabBar(
                controller: controller,
                isScrollable: true,
                indicatorColor: Colors.transparent,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.shade400,
                labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                tabs: [
                  Tab(child: Text('FEATURED'),),
                  Tab(child: Text('COMBOS'),),
                  Tab(child: Text('FAVOURITE'),),
                  Tab(child: Text('RECOMMENDED'),),
                ],
              ),

            Container(
              height: MediaQuery.of(context).size.height - 620,
              child: TabBarView(
                controller: controller,
                children: [
                  Foody(),
                  Content(),
                  FoodName(),
                  Foody(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget MyItems(int color, String img, String text, String text2){
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FoodStuff(heroTag: text,text2: text2, img: img ,)));

      },
      child: Container(
        height: 130,
        width: 120,
        margin: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Hero(tag: text,
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(img,height: 70, width: 60,
                    fit: BoxFit.cover,
                    ),
                  ),
                )),
            SizedBox(height: 30,),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
            ),
            Center(
              child: Text(
                text2,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black38,
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
