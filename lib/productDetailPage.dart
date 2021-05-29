import 'package:flutter/material.dart';
import 'package:online_grocery_try/defaultText.dart';
import 'package:online_grocery_try/store/storePage.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _counter = 0;

  void arttir() {
    setState(() {
      _counter++;
    });
  }

  void azalt() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCB6C7F),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              fit: StackFit.loose,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    color: Color(0xffCB6C7F),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200,
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
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: 25,
                    top: 30,
                    child: Image.asset('assets/images/icecek.png')),
                Positioned(
                  top: 190,
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
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      buildDefaultText(
                        'Materials',
                        15,
                        FontWeight.bold,
                        Color(0xff424242),
                      ),
                      buildDefaultText(
                        'Ice cream, heavy cream, milk, vanilla and\nstrawberries in a large.',
                        12,
                        FontWeight.w400,
                        Color(0xff424242),
                      ),
                      buildDefaultText(
                        'Instructions',
                        15,
                        FontWeight.bold,
                        Color(0xff424242),
                      ),
                      buildDefaultText(
                        'It is a long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout. ',
                        12,
                        FontWeight.w400,
                        Color(0xff424242),
                      ),
                      buildDefaultText(
                        'Description',
                        15,
                        FontWeight.bold,
                        Color(0xff424242),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/ates.png',
                              ),
                              buildDefaultText(
                                '4 Pieces',
                                10,
                                FontWeight.w400,
                                Color(0xff474749),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/dondurma.png',
                              ),
                              buildDefaultText(
                                '373 Calories',
                                10,
                                FontWeight.w400,
                                Color(0xff474749),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildDefaultText(
                              'Quantity',
                              15,
                              FontWeight.bold,
                              Color(0xff424242),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: azalt,
                                  icon: Icon(
                                    Icons.remove_circle,
                                    size: 30,
                                    color: Color(0xffB0EAFD),
                                  ),
                                ),
                                Text('$_counter'),
                                IconButton(
                                  onPressed: arttir,
                                  icon: Icon(
                                    Icons.add_box_sharp,
                                    size: 30,
                                    color: Color(0xffB0EAFD),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                color: Color(0xffF8F8F8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildDefaultText(
                        '2 Items',
                        9,
                        FontWeight.w300,
                        Color(0xff2B3D54),
                      ),
                      buildDefaultText(
                        'Total:',
                        17,
                        FontWeight.w300,
                        Color(0xff2B3D54),
                      ),
                      buildDefaultText(
                        '£ 25',
                        24,
                        FontWeight.w300,
                        Color(0xffB13E55),
                      ),
                    ],
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.56,
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        color: Color(0xffB13E55),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StorePage(),
                            ),
                          );
                        },
                        child: buildDefaultText(
                          'PURCHASE',
                          17,
                          FontWeight.w500,
                          Colors.white,
                        ),
                      )),
                ],
              ),
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
