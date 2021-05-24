import 'package:flutter/material.dart';
import 'package:online_grocery_try/textStylePage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
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
                      Text(
                        'Oxford Street',
                        style:
                            buildTextStyle(15, Colors.white, FontWeight.w400),
                      )
                    ],
                  ),
                ),
                CircleAvatar(
                  child: Image.asset('assets/images/person.png'),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.08,
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
                  Text(
                    'Search in thousands of products',
                    style: buildTextStyle(
                      11,
                      Colors.black,
                      FontWeight.w400,
                    ),
                  ),
                  Icon(Icons.mic),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildContainerMap("assets/images/harita1.png", 'Home Address',
                    "Oxford St. No:2\nStreet x12"),
                buildContainerMap("assets/images/harita2.png", 'Office Address',
                    "Eye St. No:2456\nStreet x12"),
              ],
            ),
          ],
        ),
      ),
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
