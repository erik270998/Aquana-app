import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aquana_app/screens/feed_screen.dart';
import 'package:aquana_app/screens/map_screen.dart';
import 'package:aquana_app/screens/profile_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  static final String id = 'home_screen';


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentTab = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[FeedScreen(), MapScreen(), ProfileScreen()],
        onPageChanged: (int index) {
          setState(() {
            _currentTab = index;
          });
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeInOutBack,
        index: _currentTab,
        items: <Widget>[
          Icon(Icons.work, size: 20, color: Colors.white,),
          Icon(Icons.map, size: 20, color: Colors.white,),
          Icon(Icons.person, size: 20, color: Colors.white,),
        ],
        buttonBackgroundColor:Color(0xFF0094e9),
        color: Color(0xFF0094e9),
        backgroundColor: Colors.transparent,
        animationDuration: Duration(milliseconds: 600),
        onTap: (int index) {
          setState(() {
            _currentTab = index;
          });
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        },
      ),
    );
  }
}
