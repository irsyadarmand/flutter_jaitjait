import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ArticleAppBar extends StatelessWidget {
  const ArticleAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    "assets/images/avatar5.jpg",
                    width: 35,
                  ),
                ),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/search.svg",
                  width: 25,
                  color: Colors.black54,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
