import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:online_grocery_try/productDetailPage.dart';
import 'package:online_grocery_try/registerPage.dart';
import 'package:online_grocery_try/textStylePage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FancyBottomNavigation(
        activeIconColor: Colors.white,
        circleColor: Color(0xffD93E11),
        barBackgroundColor: Color(0xffF4F9FA),
        inactiveIconColor: Color(0xff707070),
        tabs: [
          TabData(
            iconData: Icons.local_grocery_store_rounded,
            title: "Grocery",
            onclick: () {
              final FancyBottomNavigationState fState = bottomNavigationKey
                  .currentState as FancyBottomNavigationState;
              fState.setPage(2);
            },
          ),
          TabData(
              iconData: Icons.new_releases,
              title: "News",
              onclick: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RegisterPage()))),
          TabData(
            iconData: Icons.shopping_cart,
            title: "Basket",
          ),
          TabData(
            iconData: Icons.phone_locked_outlined,
            title: "Order",
          ),
        ],
        initialSelection: 1,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(
            () {
              currentPage = position;
            },
          );
        },
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      color: Color(0xffEE6A61),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(5),
                          topRight: Radius.circular(60)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.navigation_rounded,
                          color: Colors.white,
                        ),
                        buildTextDefault(
                          'Oxford Street',
                          15,
                          Colors.white,
                          FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    child: Image.asset('assets/images/person.png'),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.search_rounded),
                    buildTextDefault(
                      'Search in thousands of products',
                      11,
                      Colors.black,
                      FontWeight.w400,
                    ),
                    Icon(Icons.mic),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildContainerMap("assets/images/harita1.png", 'Home Address',
                      "Oxford St. No:2\nStreet x12"),
                  buildContainerMap("assets/images/harita2.png",
                      'Office Address', "Eye St. No:2456\nStreet x12"),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildTextDefault(
                        'Explore by Category',
                        11,
                        Color(0xff474749),
                        FontWeight.bold,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: buildTextDefault(
                          'See All (36)',
                          9,
                          Color(0xff929294),
                          FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildColumnCard("assets/images/biftek.png", 'Steak'),
                          buildColumnCard("assets/images/fish.png", 'Fish'),
                          buildColumnCard(
                              "assets/images/beverage.png", 'Beverages'),
                          buildColumnCard(
                              "assets/images/vegetables.png", 'Vegetables'),
                          buildColumnCard("assets/images/wine.png", 'Wine'),
                          buildColumnCard("assets/images/biftek.png", 'Steak'),
                          buildColumnCard("assets/images/fish.png", 'Fish'),
                          buildColumnCard(
                              "assets/images/beverage.png", 'Beverages'),
                          buildColumnCard(
                              "assets/images/vegetables.png", 'Vegetables'),
                          buildColumnCard("assets/images/wine.png", 'Wine'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  buildContainer(
                      'Deals of the day', 'assets/images/icecream.png'),
                  buildContainer(
                      'Odeme of the day', 'assets/images/beverages.png'),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(),
                    ),
                  );
                },
                child: Stack(
                  fit: StackFit.loose,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFEC8BD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -25,
                      bottom: -15,
                      child: Image.asset(
                        "assets/images/grup.png",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(String baslik, String resim) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildTextDefault(
            baslik,
            11,
            Color(0xff474749),
            FontWeight.bold,
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      resim,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildTextDefault(
                          'Summer Sun Ice Cream Pack',
                          10,
                          Color(0xff474749),
                          FontWeight.bold,
                        ),
                        buildTextDefault(
                          'Pieces 5',
                          10,
                          Color(0xff474749),
                          FontWeight.w400,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey,
                            ),
                            buildTextDefault(
                              '15 Minutes Away',
                              10,
                              Color(0xff474749),
                              FontWeight.w400,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            buildTextDefault(
                              '£ 12',
                              13,
                              Color(0xffEE6A61),
                              FontWeight.bold,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            buildTextDefault(
                              '£ 18',
                              13,
                              Color(0xff464646),
                              FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Text buildTextDefault(
      String baslik, double size, Color renk, FontWeight kalinlik) {
    return Text(
      baslik,
      style: buildTextStyle(
        size,
        renk,
        kalinlik,
      ),
    );
  }

  Column buildColumnCard(String resim, String baslik) {
    return Column(
      children: [
        Card(
          elevation: 0,
          child: Image.asset(resim),
        ),
        Text(
          baslik,
          style: buildTextStyle(
            10,
            Color(0xff474749),
            FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Container buildContainerMap(String resim, String adres, String sokak) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff707070)),
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(resim),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                adres,
                style: buildTextStyle(
                  11,
                  Color(0xff474749),
                  FontWeight.bold,
                ),
              ),
              Text(
                sokak,
                style: buildTextStyle(
                  9,
                  Color(0xff474749),
                  FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
