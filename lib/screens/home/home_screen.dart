import 'package:flutter/material.dart';
import 'package:flutter_jaitjait/models/Article.dart';
import 'package:flutter_jaitjait/models/Category.dart';
import 'package:flutter_jaitjait/models/RecommendTailor.dart';
import 'package:flutter_jaitjait/screens/article/article_screen.dart';
import 'package:flutter_jaitjait/screens/constants.dart';
import 'package:flutter_jaitjait/screens/home/components/home_appbar.dart';

import '../article/components/article_listwidget_vertical.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HomeAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: defaultPadding,
                        left: defaultPadding,
                        top: 20,
                        bottom: 10,
                      ),
                      child: Text(
                        "Gratis konsultasi dengan penjahit rekomendasi",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: textColor,
                              fontSize: 24,
                            ),
                      ),
                    ),
                    //buat avatar tailor
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 90,
                      child: ListView.builder(
                        itemCount: listTailors.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                getListTailor(listTailors[index]),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    // const SizedBox(height: defaultPadding),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      child: Text(
                        "Semua Kategori",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: textColor,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                      ),
                      height: 150,
                      child: ListView.builder(
                        itemCount: listTailors.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              getListCategory(listCategory[index]),
                            ],
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Artikel Populer",
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  color: textColor,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ArticleScreen(),
                                      ),
                                    ),
                                    child: const Text(
                                      "See all",
                                      style: TextStyle(
                                        fontFamily: "Open Sans",
                                        color: Colors.black38,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom: 20,
                      ),
                      width: double.infinity,
                      height: 390,
                      // alignment: Alignment.topCenter,
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: getListArticle1(listTitles[index]),
                          );
                        },
                      ),
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

  Widget getListTailor(RecommendedTailor item) {
    return Material(
      elevation: 0,
      shape: const CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: Ink.image(
        image: AssetImage(item.imgUrl),
        fit: BoxFit.cover,
        width: 60,
        height: 60,
        child: InkWell(
          onTap: () {},
        ),
      ),
    );
  }

  Widget getListCategory(Category cat) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Color(0xFFFFF7FB),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 7,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 1),
            height: 70,
            width: 70,
            child: IconButton(
              icon: Image.asset(cat.icon),
              onPressed: () {},
            ),
          ),
          // const Padding(padding: EdgeInsets.all(1)),
          Text(cat.title, style: titleStyleLighterBlack),
        ],
      ),
    );
  }
}
