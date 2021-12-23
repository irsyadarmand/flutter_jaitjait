class ListArticle {
  String imgUrl;
  String newsTitle;
  String subTitle;
  String author;
  String timeRead;
  String date;

  ListArticle(this.imgUrl, this.newsTitle, this.subTitle, this.author,
      this.timeRead, this.date);
}

List<ListArticle> listTitles = [
  ListArticle(
    "assets/images/best_fashion.jpg",
    "The Best Street Style Looks From New York Fashion Week Spring 2022",
    "See our winners in the gallery below, and keep reading for every single street style snap we published this week.",
    "Fashionista",
    "5 min read. ",
    "Sep 14, 2021",
    //https://fashionista.com/2021/09/best-new-york-fashion-week-street-style-spring-2022
  ),
  ListArticle(
    "assets/images/eid_fashion.jpg",
    "7 Easy Yet Fashionable Outfit Ideas Perfect for Eid",
    "The holiday calls for lots of celebration, and there's no doubt everyone shows up with some of their best outfits.",
    "Yusra Siddiqui",
    "5 min read. ",
    "May 4, 2021",
    //https://www.whowhatwear.com/eid-outfit-ideas
  ),
  ListArticle(
    "assets/images/paris_fashion.jpg",
    "The 18 Best Beauty Looks From Milan Fashion Week Street Style",
    "Among the standout trends we spotted on Milan Fashion Week attendees are plenty of red lipstick, soft natural curls, Afros and many fancy headscarves.",
    "Stephanie Saltzman",
    "7 min read. ",
    "Sep 29, 2021",
    //https://fashionista.com/2021/09/beauty-hair-makeup-street-style-mfw-spring-2022
  ),
];
