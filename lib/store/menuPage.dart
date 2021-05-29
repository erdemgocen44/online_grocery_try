import 'package:flutter/material.dart';
import 'package:online_grocery_try/defaultText.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  buildButton(
                    'DRINK',
                  ),
                  buildButton(
                    'FOOD',
                  ),
                  buildButton(
                    'SWEETS',
                  ),
                  buildButton(
                    'BEVERAGE',
                  ),
                  buildButton(
                    'KÖFTE',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: buildDefaultText(
                'Featured',
                15,
                FontWeight.bold,
                Colors.black,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  buildStackCardCoctail(
                    Color(
                      0xff408EE7,
                    ),
                    Color(0xffD6E7FF),
                    '125 Votes',
                    Color(
                      0xff6191D3,
                    ),
                    'Blue\nDiamond',
                    Color(
                      0xff6191D3,
                    ),
                    'Coctail',
                    Color(
                      0xff6191D3,
                    ),
                    '£ 12',
                    Color(
                      0xff6191D3,
                    ),
                    'assets/images/coctail.png',
                    Color(0xff408EE7),
                  ),
                  buildStackCardCoctail(
                    Color(
                      0xffFA8867,
                    ),
                    Color(0xffEFC3B6),
                    '107 Votes',
                    Color(
                      0xffFA8867,
                    ),
                    'Caramel\nLatte',
                    Color(
                      0xffFA8867,
                    ),
                    'Coffe',
                    Color(
                      0xffFA8867,
                    ),
                    '£ 15',
                    Color(
                      0xffFA8867,
                    ),
                    'assets/images/kirmizi.png',
                    Color(0xffF98968),
                  ),
                  buildStackCardCoctail(
                    Color(
                      0xff408EE7,
                    ),
                    Color(0xffD6E7FF),
                    '125 Votes',
                    Color(
                      0xff6191D3,
                    ),
                    'Blue\nDiamond',
                    Color(
                      0xff6191D3,
                    ),
                    'Coctail',
                    Color(
                      0xff6191D3,
                    ),
                    '£ 12',
                    Color(
                      0xff6191D3,
                    ),
                    'assets/images/coctail.png',
                    Color(0xff408EE7),
                  ),
                  buildStackCardCoctail(
                    Color(
                      0xffFA8867,
                    ),
                    Color(0xffEFC3B6),
                    '107 Votes',
                    Color(
                      0xffFA8867,
                    ),
                    'Caramel\nLatte',
                    Color(
                      0xffFA8867,
                    ),
                    'Coffe',
                    Color(
                      0xffFA8867,
                    ),
                    '£ 15',
                    Color(
                      0xffFA8867,
                    ),
                    'assets/images/kirmizi.png',
                    Color(0xffF98968),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack buildStackCardCoctail(
      Color starRenk,
      Color containerRenk,
      String votes,
      Color votesRenk,
      String isim,
      Color isimRenk,
      String cesit,
      Color cesitRenk,
      String fiyat,
      Color fiyatRenk,
      String resim,
      Color floatingRenk) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: containerRenk,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      30,
                    ),
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.height * 0.37,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                buildIconStar(
                                  starRenk,
                                ),
                                buildIconStar(
                                  starRenk,
                                ),
                                buildIconStar(
                                  starRenk,
                                ),
                                buildIconStar(
                                  starRenk,
                                ),
                                buildIconStar(
                                  starRenk,
                                ),
                              ],
                            ),
                            buildDefaultText(
                                votes, 10, FontWeight.w400, votesRenk),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildDefaultText(
                              isim,
                              19,
                              FontWeight.w400,
                              isimRenk,
                            ),
                            buildDefaultText(
                              cesit,
                              19,
                              FontWeight.bold,
                              cesitRenk,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        child: buildDefaultText(
                          fiyat,
                          34,
                          FontWeight.bold,
                          fiyatRenk,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 35,
          left: 135,
          child: Image.asset(
            resim,
          ),
        ),
        Positioned(
          top: 240,
          left: 160,
          child: FloatingActionButton(
            backgroundColor: floatingRenk,
            child: Icon(
              Icons.add,
              size: 50,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Icon buildIconStar(Color star) {
    return Icon(
      Icons.star,
      color: star,
      size: 25,
    );
  }

  Padding buildButton(String baslik) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.24,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            elevation: 5,
            primary: Color(0xffCDEDFA),
          ),
          onPressed: () {},
          child: buildDefaultText(
            baslik,
            13,
            FontWeight.w400,
            Color(
              0xff5698E2,
            ),
          ),
        ),
      ),
    );
  }
}
