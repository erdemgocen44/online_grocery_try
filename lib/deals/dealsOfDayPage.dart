import 'package:flutter/material.dart';
import 'package:online_grocery_try/deals/cardView.dart';
import 'package:online_grocery_try/deals/dealsPage.dart';
import 'package:online_grocery_try/defaultText.dart';

class DealsOfDayPage extends StatefulWidget {
  @override
  _DealsOfDayPageState createState() => _DealsOfDayPageState();
}

class _DealsOfDayPageState extends State<DealsOfDayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: buildDefaultText(
                'Deal of The Day',
                16,
                FontWeight.bold,
                Colors.black,
              ),
            ),
            CardView(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: Color(
                      0xffF97368,
                    ),
                    radius: 35,
                    child: Icon(
                      Icons.clear_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DealsPage(),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(
                      0xff8E6CE1,
                    ),
                    child: Icon(
                      Icons.favorite_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
