import 'package:flutter/material.dart';
import 'package:online_grocery_try/deals/dealsOfDayPage.dart';
import 'package:online_grocery_try/defaultText.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/payment.png"),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink[200],
                  elevation: 7,
                  shape: StadiumBorder(),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DealsOfDayPage(),
                    ),
                  );
                },
                child: buildDefaultText(
                  'DEVAM',
                  24,
                  FontWeight.bold,
                  Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
