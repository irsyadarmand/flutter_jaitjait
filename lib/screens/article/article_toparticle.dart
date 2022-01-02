import 'package:flutter/material.dart';
import 'package:flutter_jaitjait/screens/constants.dart';

import '../../models/Article.dart';
import 'components/article_listwidget_horizontal.dart';
import 'components/article_listwidget_vertical.dart';

class TopArticles extends StatelessWidget {
  const TopArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              height: 227,
              width: double.infinity,
              child: ListView.builder(
                itemCount: listTitles.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: getListArticle2(listTitles[index]),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Based on your search history",
            style: TextStyle(
              fontSize: 18,
              color: textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            width: 60,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: primaryColor, width: 2),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(bottom: 60),
            height: 500,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: listTitles.length,
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
    );
  }
}
