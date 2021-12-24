import 'package:flutter_jaitjait/screens/article/article_screen.dart';
import 'package:flutter_jaitjait/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter_jaitjait/screens/home/home_screen.dart';
import 'package:flutter_jaitjait/screens/messages/messages_screen.dart';
import 'package:flutter_jaitjait/screens/shops/shops_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  PageController _pageController = PageController(initialPage: 0);

  final _bottomNavigationBarItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.article_outlined),
      label: "Article",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message_outlined),
      label: "Message",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.local_mall_outlined),
      label: "Shops",
    ),
  ];

  // List<Widget> _widgetOptions = [
  //   HomeScreen(),
  //   Text("Articles"),
  //   Text("Messages"),
  //   Text("Shops"),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (newIndex) {
          setState(() {
            _selectedIndex = newIndex;
          });
        },
        children: [
          HomeScreen(),
          ArticleScreen(),
          MessageScreen(),
          ShopScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: _bottomNavigationBarItems,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        backgroundColor: Colors.white,
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 500), curve: Curves.ease);
        },
      ),
      // body: Center(
      //   child: _widgetOptions.elementAt(_selectedIndex),
      // ),
      // bottomNavigationBar: CustomLineIndicatorBottomNavbar(
      //   selectedColor: primaryColor,
      //   unSelectedColor: Colors.black54,
      //   backgroundColor: Colors.white,
      //   currentIndex: _selectedIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      //   enableLineIndicator: false,
      //   lineIndicatorWidth: 3,
      //   indicatorType: IndicatorType.Top,
      //   customBottomBarItems: [
      //     CustomBottomBarItems(
      //       label: 'Home',
      //       icon: Icons.home_outlined,
      //     ),
      //     CustomBottomBarItems(
      //       label: 'Articles',
      //       icon: Icons.article_outlined,
      //     ),
      //     CustomBottomBarItems(
      //       label: 'Messages',
      //       icon: Icons.message_outlined,
      //     ),
      //     CustomBottomBarItems(
      //       label: 'Shops',
      //       icon: Icons.local_mall_outlined,
      //     ),
      //   ],
      // ),
    );
  }
}
