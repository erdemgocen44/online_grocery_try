import 'package:flutter/material.dart';
import 'package:online_grocery_try/defaultText.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 0, left: 15.0, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.10,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Color(0xffA1CD44),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: buildDefaultText(
                          '4.8',
                          32,
                          FontWeight.w400,
                          Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildContainerStars(
                                  Color(
                                    0xffEA4554,
                                  ),
                                  ' 1'),
                              buildContainerStars(
                                  Color(
                                    0xff5597E1,
                                  ),
                                  ' 2'),
                              buildContainerStars(
                                  Color(
                                    0xff5B5A5B,
                                  ),
                                  ' 3'),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildContainerStars(
                                  Color(
                                    0xffFA8867,
                                  ),
                                  ' 4'),
                              buildContainerStars(
                                  Color(
                                    0xff125AB7,
                                  ),
                                  ' 5'),
                              SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              buildDefaultText(
                'Last Comment',
                15,
                FontWeight.bold,
                Colors.black,
              ),
              buildDefaultText(
                "There are many variations of passages of Lorem\nIpsum available, but the majority have suffered\nalteration in some form, by injected humour, or \nrandomised words which don't look even slightly\nbelievable. If you are going to use a passage of\nLorem Ipsum, you need to be sure there isn't anything\nembarrassing hidden in the middle of text. ",
                12,
                FontWeight.w400,
                Colors.black,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildRowStar(
                      '5 Star',
                      MediaQuery.of(context).size.width * 0.7,
                      Color(
                        0xff125AB7,
                      ),
                    ),
                    buildRowStar(
                      '4 Star',
                      MediaQuery.of(context).size.width * 0.6,
                      Color(
                        0xffFA8867,
                      ),
                    ),
                    buildRowStar(
                      '3 Star',
                      MediaQuery.of(context).size.width * 0.5,
                      Colors.amber,
                    ),
                    buildRowStar(
                      '2 Star',
                      MediaQuery.of(context).size.width * 0.4,
                      Color(
                        0xff5597E1,
                      ),
                    ),
                    buildRowStar(
                      '1 Star',
                      MediaQuery.of(context).size.width * 0.3,
                      Color(
                        0xffEA4554,
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                fit: StackFit.loose,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: buildDefaultText(
                        "I hate this story, but I just also learned of the things what the actress \nhas done,I was so disappointed. Although she has done something \nwrong, I just wanna to say that the movie is pretty bad on its own \nand I hate the song especially Everything I Need. Also,the fight \nscenes are very boring, just like real people fighting in front of you.",
                        9,
                        FontWeight.w300,
                        Color(
                          0xffBBBABA,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 65,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Color(
                          0xffF6F6F6,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildDefaultText(
                            'C**** C*',
                            11,
                            FontWeight.w400,
                            Colors.black,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildRowStar(String isim, double deger, Color renk) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildDefaultText(
          isim,
          15,
          FontWeight.w400,
          Colors.black,
        ),
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color(
                  0xffF2F2F2,
                ),
              ),
            ),
            Positioned(
              child: Container(
                width: deger,
                height: 14,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: renk),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Container buildContainerStars(Color renk, String deger) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(
          color: renk,
        ),
      ),
      child: Row(
        children: [
          buildDefaultText(deger, 17, FontWeight.w400, renk),
          Icon(
            Icons.star,
            color: renk,
            size: 15,
          ),
        ],
      ),
    );
  }
}
