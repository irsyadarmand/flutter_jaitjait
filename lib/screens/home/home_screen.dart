import 'package:flutter/material.dart';
import 'package:flutter_jaitjait/models/Article.dart';
import 'package:flutter_jaitjait/models/Category.dart';
import 'package:flutter_jaitjait/models/RecommendTailor.dart';
import 'package:flutter_jaitjait/screens/constants.dart';
import 'package:flutter_jaitjait/screens/home/components/appbar.dart';

import 'package:flutter_svg/flutter_svg.dart';

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
                                    onPressed: () {},
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
                      height: 275,
                      // alignment: Alignment.topCenter,
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: getListArticle(listTitles[index]),
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

  Widget getListArticle(ListArticle art) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 20),
      color: Color(0xFFFFF7FB),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        art.author,
                        style: const TextStyle(
                            fontSize: 12,
                            color: primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        art.timeRead,
                        style: const TextStyle(
                          fontSize: 9,
                          color: Colors.black38,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        art.date,
                        style: const TextStyle(
                          fontSize: 9,
                          color: Colors.black38,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      art.newsTitle,
                      style: const TextStyle(
                        fontSize: 18,
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      art.subTitle,
                      style: const TextStyle(
                        fontSize: 9,
                        color: Colors.black38,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Container(
              alignment: Alignment.centerRight,
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(art.imgUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 7,
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
