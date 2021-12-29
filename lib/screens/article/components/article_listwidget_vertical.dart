import 'package:flutter/material.dart';

import '../../../models/Article.dart';
import '../../constants.dart';

Widget getListArticle1(ListArticle art) {
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
