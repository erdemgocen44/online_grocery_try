import 'package:flutter/material.dart';
import 'package:online_grocery_try/defaultText.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    color: Color(0xffCB6C7F),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 220,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            buildDefaultText('Deals of the week', 11,
                                FontWeight.bold, Colors.white),
                            buildDefaultText('Fresh Strawberry ', 19,
                                FontWeight.w400, Colors.white),
                            buildDefaultText('Milkshakes ', 23, FontWeight.bold,
                                Colors.white),
                            Row(
                              children: [
                                buildIconStars(),
                                buildIconStars(),
                                buildIconStars(),
                                buildIconStars(),
                                buildIconStars(),
                              ],
                            ),
                            buildDefaultText(
                              '125 Votes',
                              10,
                              FontWeight.w400,
                              Colors.white,
                            ),
                            SizedBox(
                              height: 80,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                    left: 25,
                    top: 60,
                    child: Image.asset('assets/images/icecek.png')),
                Positioned(
                  top: 220,
                  left: 220,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      color: Color(0xffB13E55),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildDefaultText(
                          '£ 12',
                          23,
                          FontWeight.w400,
                          Colors.white,
                        ),
                        buildDefaultText(
                          '£ 19',
                          23,
                          FontWeight.w400,
                          Color(0xffCB6C7F),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Icon buildIconStars() {
    return Icon(
      Icons.star,
      color: Colors.amberAccent,
    );
  }
}
