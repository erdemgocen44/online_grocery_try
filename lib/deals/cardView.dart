import 'package:flutter/material.dart';
import 'package:online_grocery_try/defaultText.dart';

class CardView extends StatefulWidget {
  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(2, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              clipBehavior: Clip.hardEdge,
              fit: StackFit.loose,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      child: Image.asset(
                        "assets/images/tunaPasta(1).jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 125,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      child: Image.asset("assets/images/karekod.jpg")),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildDefaultText(
                      'Tuna Pasta Salad',
                      17,
                      FontWeight.w400,
                      Colors.black,
                    ),
                    buildDefaultText(
                      '£ 25',
                      24,
                      FontWeight.w500,
                      Color(
                        0xffB13E55,
                      ),
                    ),
                    buildDefaultText(
                      'Old Student House 56 Street',
                      15,
                      FontWeight.w400,
                      Colors.black,
                    ),
                    Row(
                      children: [
                        Stack(
                          fit: StackFit.loose,
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              child:
                                  buildCircleAvatar('assets/images/unlu1.jpg'),
                            ),
                            Positioned(
                              left: 25,
                              child:
                                  buildCircleAvatar('assets/images/unlu2.jpg'),
                            ),
                            Positioned(
                              left: 50,
                              child:
                                  buildCircleAvatar('assets/images/unlu3.jpg'),
                            ),
                            Positioned(
                              left: 75,
                              child:
                                  buildCircleAvatar('assets/images/unlu4.jpg'),
                            ),
                            Positioned(
                              left: 100,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(
                                  0xffFFBA6E,
                                ),
                                child: buildDefaultText(
                                  '+ 54',
                                  16,
                                  FontWeight.bold,
                                  Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              left: 180,
                              child: buildDefaultText(
                                '112 Interested',
                                15,
                                FontWeight.w400,
                                Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar(String resim) {
    return CircleAvatar(
      radius: 25,
      child: ClipOval(
        child: Image.asset(
          resim,
        ),
      ),
    );
  }
}
