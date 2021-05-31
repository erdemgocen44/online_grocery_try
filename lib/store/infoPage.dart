import 'package:flutter/material.dart';
import 'package:online_grocery_try/defaultText.dart';
import 'package:online_grocery_try/store/paymentMethod.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                top: 15,
              ),
              child: buildDefaultText(
                'Aimer le Café',
                15,
                FontWeight.bold,
                Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  buildIconStars(),
                  buildIconStars(),
                  buildIconStars(),
                  buildIconStars(),
                  buildIconStars(),
                  buildDefaultText(
                    'Open Now',
                    12,
                    FontWeight.w400,
                    Color(
                      0xff589A11,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: buildDefaultText(
                '6 Place St Germain des Pres, Paris',
                12,
                FontWeight.w400,
                Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: buildDefaultText(
                'Info',
                15,
                FontWeight.bold,
                Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: buildDefaultText(
                "There are many variations of passages of Lorem\nIpsum available, but the majority have suffered\nalteration in some form, by injected humour, or \nrandomised words which don't look even slightly\nbelievable. If you are going to use a passage of\nLorem Ipsum, you need to be sure there isn't anything\nembarrassing hidden in the middle of text. ",
                12,
                FontWeight.w400,
                Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: buildDefaultText(
                'Contact',
                15,
                FontWeight.bold,
                Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      elevation: 9,
                      primary: Color(0xffF9BDAD),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Color(
                            0xffEE6060,
                          ),
                        ),
                        buildDefaultText(
                          '+1 232 2323 23',
                          13,
                          FontWeight.w400,
                          Color(
                            0xffEE6060,
                          ),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      elevation: 9,
                      primary: Color(0xffB0EAFD),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.connect_without_contact_rounded,
                          color: Color(
                            0xff58A2BB,
                          ),
                        ),
                        buildDefaultText(
                          'bugradere.com',
                          13,
                          FontWeight.w400,
                          Color(
                            0xff58A2BB,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: buildDefaultText(
                'Info',
                15,
                FontWeight.bold,
                Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: buildDefaultText(
                "There are many variations of passages of Lorem\nIpsum available, but the majority have suffered\nalteration in some form, by injected humour, or \nrandomised words which don't look even slightly\nbelievable. If you are going to use a passage of\nLorem Ipsum, you need to be sure there isn't anything\nembarrassing hidden in the middle of text. ",
                12,
                FontWeight.w400,
                Colors.black,
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
                            builder: (context) => PaymentMethodPage(),
                          ),
                        );
                      },
                      child: buildDefaultText(
                        'ORDER NOW',
                        17,
                        FontWeight.w500,
                        Colors.white,
                      ),
                    ),
                  ),
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
      Icons.star_rounded,
      size: 25,
      color: Colors.yellow,
    );
  }
}
