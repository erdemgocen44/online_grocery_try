import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.hardEdge,
                      fit: StackFit.loose,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(150),
                            ),
                          ),
                          child: Image.asset(
                            "assets/images/tunaPasta(1).jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          top: 100,
                          left: 85,
                          child: Image.asset("assets/images/karekod.jpg"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
