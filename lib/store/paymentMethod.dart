import 'package:flutter/material.dart';
import 'package:online_grocery_try/defaultText.dart';
import 'package:online_grocery_try/store/splashPage.dart';

class PaymentMethodPage extends StatefulWidget {
  @override
  _PaymentMethodPageState createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildDefaultText(
                'Paymend Method',
                16,
                FontWeight.bold,
                Colors.black,
              ),
              buildContainerCard(
                Color(
                  0xffF9BDAD,
                ),
                "assets/images/bank.png",
                'Bank Card',
                Color(0xffD04837),
              ),
              buildContainerCard(
                Color(
                  0xffFAD96D,
                ),
                "assets/images/credit.png",
                'Credit Card',
                Color(0xffB38800),
              ),
              buildContainerCard(
                Color(
                  0xffDEF7EA,
                ),
                "assets/images/cash.png",
                'Cash',
                Color(0xff2FA663),
              ),
              buildContainerCard(
                Color(
                  0xffB0EAFD,
                ),
                "assets/images/paypal.png",
                'PayPal',
                Color(0xff1E5061),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainerCard(
      Color cardRenk, String resim, String metin, Color metinRenk) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.2,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SplashPage(),
            ),
          );
        },
        child: Card(
          elevation: 7,
          color: cardRenk,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(resim),
              buildDefaultText(
                metin,
                24,
                FontWeight.bold,
                metinRenk,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
