import 'package:flutter_jaitjait/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter_jaitjait/screens/home/home_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [
    HomeScreen(),
    Text("Articles"),
    Text("Messages"),
    Text("Shops"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: primaryColor,
        unSelectedColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        enableLineIndicator: false,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,
        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Home',
            icon: Icons.home_outlined,
          ),
          CustomBottomBarItems(
            label: 'Articles',
            icon: Icons.article_outlined,
          ),
          CustomBottomBarItems(
            label: 'Messages',
            icon: Icons.message_outlined,
          ),
          CustomBottomBarItems(
            label: 'Shops',
            icon: Icons.local_mall_outlined,
          ),
        ],
      ),
    );
  }
}
