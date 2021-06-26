import 'package:flutter/material.dart';
import 'package:online_grocery_try/defaultText.dart';

class DealsPage extends StatefulWidget {
  @override
  _DealsPageState createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage> {
  bool _value = false;
  int val = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildRow(
                    Color(0xffCDB9FF),
                    Color(
                      0xff6135FF,
                    ),
                    'Food Crazy Pizza Store x 2 big Pizza Menu\n3 x Fresh Banana Milkshake'),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.grey,
                        width: 3,
                      ),
                    ),
                  ),
                ),
                buildRow(
                    Color(
                      0xffFF9DC3,
                    ),
                    Color(
                      0xffCF2F6C,
                    ),
                    'Old Student House 56 Street                         '),
                buildDefaultText(
                  'Credit/Debit Cards',
                  15,
                  FontWeight.bold,
                  Colors.black,
                ),
                buildRadioListTile(
                  'Credit Card 1',
                  '1256 **** **** **12',
                ),
                buildRadioListTile(
                  'Credit Card 2',
                  '4436 **** **** **17',
                ),
                buildRadioListTile(
                  'E-Wallet',
                  'Payment with a new card',
                ),
                buildDefaultText(
                  'Save and Pay via Cards.',
                  15,
                  FontWeight.bold,
                  Color(
                    0xffD7D7D6,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Image.asset(
                    'assets/images/creditCard.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF8F8F8),
                  ),child: Row(children: [
                    
                  ],),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RadioListTile<int> buildRadioListTile(
    String cardName,
    String cardNumber,
  ) {
    return RadioListTile(
      secondary: Icon(
        Icons.credit_card,
        size: 25,
        color: Colors.black,
      ),
      selected: _value,
      title: buildDefaultText(
        cardName,
        12,
        FontWeight.w400,
        Colors.black,
      ),
      subtitle: Text(
        cardNumber,
      ),
      activeColor: Color(
        0xffCF2F6C,
      ),
      value: 1,
      toggleable: true,
      controlAffinity: ListTileControlAffinity.trailing,
      groupValue: val,
      onChanged: (value) {
        setState(() {
          if (_value == false) {
            _value = true;
          } else {
            _value = false;
          }
        });
      },
    );
  }

  Row buildRow(Color renkContainer, Color ikonRenk, String cumle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
            color: renkContainer,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Icon(
            Icons.document_scanner,
            size: 30,
            color: ikonRenk,
          ),
        ),
        buildDefaultText(
          cumle,
          12,
          FontWeight.w400,
          Colors.black,
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
