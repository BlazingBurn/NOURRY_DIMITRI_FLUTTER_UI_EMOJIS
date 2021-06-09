import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Food App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listFoodTop = [
    'Images/burger.png',
    'Images/fries.png',
    'Images/cheese.png',
    'Images/doughnut.png',
    'Images/taco.png'
  ];
  var listFoodNameTop = ['Hamburg', 'Fries', 'Cheese', 'Doughnut', 'Taco'];
  var listPriceFoodTop = ['\$7,99', '\$4,99', '\$3,99', '\$5,99', '\$7,99'];
  var listColorFoodTop = [
    Colors.orange.shade100,
    Colors.redAccent.shade100,
    Colors.blue.shade100,
    Colors.greenAccent.shade100,
    Colors.yellow.shade100
  ];
  var listColorFoodPriceTop = [
    Color.fromRGBO(218, 149, 81, 1),
    Color.fromRGBO(255, 10, 10, 1),
    Color.fromRGBO(104, 117, 164, 1),
    Color.fromRGBO(101, 157, 81, 1),
    Color.fromRGBO(200, 179, 67, 1)
  ];

  var listStringSelection = [
    'Featured',
    'Combo',
    'Favorites',
    'Cheaper',
    'Promotion'
  ];

  var listFoodBottom = [
    'Images/hotdog.png',
    'Images/pizza.png',
    'Images/popcorn.png',
    'Images/sandwich.png'
  ];
  var listFoodNameBottom = [
    'Delicious Hot-dog',
    'Incredible pizza',
    'Best Pop-Corn Ever',
    'Good Sandwich'
  ];
  var listColorFoodBottom = [
    Colors.orange.shade100,
    Colors.redAccent.shade100,
    Colors.yellow.shade100,
    Colors.greenAccent.shade100
  ];
  var listNoPriceFoodBottom = ['\$5,99', '\$7,99', '\$10,99', '\$6,99'];
  var listYesPriceFoodBottom = ['\$3,99', '\$2,99', '\$5,99', '\$3,99'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0, top: 7.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(blurRadius: 5, color: Colors.grey, spreadRadius: 1)
                ],
              ),
              child: CircleAvatar(
                radius: 24.0,
                backgroundImage: ExactAssetImage(
                  'Images/tuxedo.png',
                ),
                backgroundColor: Colors.lightBlue.shade100,
              ),
            ),
          )
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 35.0, left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "search for \nrecipes".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: "Search",
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 10.0, left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recommended",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              ),

              Flexible(
                  flex: 4,
                  child: Container(
                    child: SizedBox(
                      width: 500,
                      height: 500,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listFoodTop.length,
                        shrinkWrap: true,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 15.0, left: 8.0),
                            child: Container(
                              width: 165,
                              decoration: BoxDecoration(
                                  color: listColorFoodTop[i],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 30),
                                    child: CircleAvatar(
                                      child: Image.asset(
                                        listFoodTop[i],
                                        width: 70.0,
                                      ),
                                      backgroundColor: Colors.white,
                                      radius: 48.0,
                                    ),
                                  ),

                                  Text(
                                    listFoodNameTop[i],
                                    style: TextStyle(
                                        color: listColorFoodPriceTop[i],
                                        fontSize: 19.0,
                                    ),
                                  ),

                                  Text(
                                    listPriceFoodTop[i],
                                    style: TextStyle(
                                        color: listColorFoodPriceTop[i],
                                        fontSize: 19.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )),

              Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listStringSelection.length,
                      shrinkWrap: true,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              listStringSelection[i].toUpperCase(),
                              textAlign: TextAlign.center,
                              style: (i == 0)
                                  ? TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)
                                  : TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        );
                      },
                    ),
              )),

              Flexible(
                  flex: 2,
                  child: SizedBox(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: listFoodBottom.length,
                      shrinkWrap: true,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: listColorFoodBottom[i],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    listFoodBottom[i],
                                    width: 60.0,
                                    height: 60.0,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listFoodNameBottom[i],
                                    ),
                                    Container(
                                      child: Row(
                                        children: randomStars(),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5.0),
                                          child: Text(
                                            listYesPriceFoodBottom[i],
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),

                                        // Text price cross out
                                        Text(
                                          listNoPriceFoodBottom[i],
                                          style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 11,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationColor: Colors.red,
                                            decorationThickness: 1.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              //space between text and action button
                              Spacer(),

                              // Button Action add
                              Container(
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: Colors.red,
                                  child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: Icon(Icons.add)),
                                ),
                                width: 40,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> randomStars() {
  var rand = new Random().nextInt(6);

  List<Widget> stars = [];

  for (int i = 0; i < 5; i++) {
    if (i < rand) {
      stars.add(Icon(
        Icons.star,
        color: Colors.yellow,
        size: 16,
      ));
    } else {
      stars.add(Icon(
        Icons.star_border,
        color: Colors.grey,
        size: 16,
      ));
    }
  }
  return stars;
}
