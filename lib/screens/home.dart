import 'package:flutter_jaitjait/screens/article/article_screen.dart';
import 'package:flutter_jaitjait/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jaitjait/screens/home/home_screen.dart';
import 'package:flutter_jaitjait/screens/messages/messages_screen.dart';
import 'package:flutter_jaitjait/screens/shops/shops_screen.dart';

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
      icon: Icon(Icons.message_outlined),
      label: "Message",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.local_mall_outlined),
      label: "Shops",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.article_outlined),
      label: "Article",
    ),
  ];

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
        children: const [
          HomeScreen(),
          MessageScreen(),
          ShopScreen(),
          ArticleScreen(),
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
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        },
      ),
      // body: Center(
    );
  }
}
