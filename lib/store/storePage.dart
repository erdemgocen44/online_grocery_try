import 'package:flutter/material.dart';
import 'package:online_grocery_try/defaultText.dart';
import 'package:online_grocery_try/store/infoPage.dart';
import 'package:online_grocery_try/store/menuPage.dart';
import 'package:online_grocery_try/store/reviewPage.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage>
    with SingleTickerProviderStateMixin {
  final double _minValue = 8.0;
  late TabController _controller = TabController(
    length: 3,
    vsync: this,
  );
  int _selectedIndex = 0;
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);

    _controller.addListener(
      () {
        setState(() {
          _selectedIndex = _controller.index;
        });
        print(
          "Selected Index: " + _controller.index.toString(),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: NestedScrollView(
            body: TabBarView(
              controller: _controller,
              children: [
                InfoPage(),
                MenuPage(),
                ReviewPage(),
              ],
            ),
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
              SliverAppBar(
                expandedHeight: 170,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/images/dinner.jpg',
                  ),
                  centerTitle: false,
                ),
                backgroundColor: Colors.red,
                elevation: 12.0,
                bottom: TabBar(
                  controller: _controller,
                  labelPadding: EdgeInsets.all(0),
                  indicatorPadding: EdgeInsets.all(0),
                  unselectedLabelColor: Color(0xff5f6368),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), // Creates border
                    color: Color(
                      0xffA22E3A,
                    ),
                  ),
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 3,
                  tabs: [
                    Container(
                      decoration: BoxDecoration(),
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Tab(
                        child: buildDefaultText(
                          'Info',
                          16,
                          FontWeight.w400,
                          Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.30,
                      decoration: BoxDecoration(),
                      child: Tab(
                        child: buildDefaultText(
                          'Menu',
                          16,
                          FontWeight.w400,
                          Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(),
                      child: Tab(
                        child: buildDefaultText(
                          'Reviews',
                          16,
                          FontWeight.w400,
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
      ),
    );
  }
}
