import 'package:flutter/material.dart';
import 'package:flutter_jaitjait/screens/article/article_toparticle.dart';
import 'package:flutter_jaitjait/screens/article/components/article_appbar.dart';
import 'package:flutter_jaitjait/screens/article/components/article_listwidget_horizontal.dart';
import 'package:flutter_jaitjait/screens/constants.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/Article.dart';
import 'components/article_listwidget_vertical.dart';

@override
class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen>
    with SingleTickerProviderStateMixin {
  final List<Tab> _tabList = [
    Tab(
      child: Container(
        width: 100,
        height: 20,
        alignment: Alignment.centerLeft,
        child: const Text("Top Articles"),
      ),
    ),
    Tab(
      child: Container(
        width: 120,
        height: 20,
        alignment: Alignment.center,
        child: const Text("New Published"),
      ),
    ),
    Tab(
      child: Container(
        width: 50,
        height: 20,
        alignment: Alignment.center,
        child: const Text("All"),
      ),
    )
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabList.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ArticleAppBar(),
            const SizedBox(height: 10),
            TabBar(
              tabs: _tabList,
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: const EdgeInsets.only(
                  left: defaultPadding, right: defaultPadding),
              isScrollable: true,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 2, color: primaryColor),
                insets: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              ),
              labelColor: textColor,
              labelStyle: const TextStyle(
                fontFamily: "Open Sans",
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 12,
                fontFamily: "Open Sans",
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelColor: Colors.grey,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  const TopArticles(),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      child: ListView.builder(
                        itemCount: listTitles.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: getListArticle1(listTitles[index]),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      child: ListView.builder(
                        itemCount: listTitles.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: getListArticle1(listTitles[index]),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
