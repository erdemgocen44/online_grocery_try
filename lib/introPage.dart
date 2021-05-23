import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:online_grocery_try/signIn.dart';
import 'package:online_grocery_try/textStylePage.dart';

import 'homeScreen.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
        title: "You Can Order Ant Time\nfrom Online Grocery",
        maxLineTitle: 2,
        styleTitle: buildTextStyle(20, Colors.black, FontWeight.bold),
        backgroundColor: Colors.white,
        pathImage: "assets/images/intro1.png",
        backgroundImageFit: BoxFit.fitWidth,
        onCenterItemPress: () {},
      ),
    );
    slides.add(
      Slide(
        title: "You Can Order Ant Time\nfrom Online Grocery",
        maxLineTitle: 2,
        styleTitle: buildTextStyle(20, Colors.black, FontWeight.bold),
        backgroundColor: Colors.white,
        pathImage: "assets/images/intro2.png",
        backgroundImageFit: BoxFit.fitWidth,
        onCenterItemPress: () {},
      ),
    );
    slides.add(
      Slide(
        title: "You Can Order Ant Time\nfrom Online Grocery",
        maxLineTitle: 2,
        styleTitle: buildTextStyle(20, Colors.black, FontWeight.bold),
        backgroundColor: Colors.white,
        pathImage: "assets/images/intro3.png",
        backgroundImageFit: BoxFit.fitWidth,
        onCenterItemPress: () {},
      ),
    );
    slides.add(
      Slide(
        title: "You Can Order Ant Time\nfrom Online Grocery",
        maxLineTitle: 2,
        styleTitle: buildTextStyle(20, Colors.black, FontWeight.bold),
        backgroundColor: Colors.white,
        pathImage: "assets/images/intro4.png",
        backgroundImageFit: BoxFit.contain,
        onCenterItemPress: () {},
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SingInPage()),
    );
  }

  Widget renderDoneBtn() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.4,
      child: Center(
        child: Text("Get Started",
            style: buildTextStyle(16, Colors.white, FontWeight.bold)),
      ),
    );
  }

  Widget renderSkipBtn() {
    return Text("Skip",
        style: buildTextStyle(16, Colors.black, FontWeight.w400));
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,
      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Colors.transparent,

      // Next button

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0xffE04427),
      highlightColorDoneBtn: Color(0xffE04427),

      // Dot indicator
      showDotIndicator: true,
      colorDot: Colors.grey,
      colorActiveDot: Color(0xffE04427),
      sizeDot: 15.0, isScrollable: true,

      // Show or hide status bar
      hideStatusBar: true,

      // Scrollbar
      // verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
    );
  }
}
