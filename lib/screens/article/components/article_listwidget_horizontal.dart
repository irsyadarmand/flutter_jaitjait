import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jaitjait/models/Article.dart';
import 'package:like_button/like_button.dart';

import '../../constants.dart';

Widget getListArticle2(ListArticle arti) {
  bool isLiked = false;
  // int likeCount = arti.like;
  double size = 15;
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: bgstyleColor,
      ),
      color: bgstyleColor,
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    width: 250,
    margin: const EdgeInsets.only(right: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              arti.imgUrl,
              width: 249,
              height: 114,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text(
                arti.author,
                style: const TextStyle(
                    fontSize: 12,
                    color: primaryColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(width: 5),
              Text(
                arti.timeRead,
                style: const TextStyle(
                  fontSize: 9,
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                arti.date,
                style: const TextStyle(
                  fontSize: 9,
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            arti.newsTitle,
            style: const TextStyle(
              fontSize: 18,
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            arti.subTitle,
            style: const TextStyle(
              fontSize: 9,
              color: Colors.black38,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
            ),
            LikeButton(
              size: size,
              isLiked: isLiked,
              likeCount: arti.like,
              likeBuilder: (isLiked) {
                final color = isLiked ? Colors.red : Colors.grey;

                return Icon(
                  Icons.favorite,
                  color: color,
                  size: size,
                );
              },
              likeCountPadding: const EdgeInsets.only(left: 12),
              countBuilder: (count, isLiked, text) {
                final color = isLiked ? Colors.black54 : Colors.grey;

                return Text(
                  text,
                  style: TextStyle(
                    color: color,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                );
              },
            ),
            const SizedBox(width: 100),
            Text(
              arti.comments,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black38,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    ),
  );
}
