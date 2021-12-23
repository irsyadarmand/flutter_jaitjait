import 'package:flutter/material.dart';
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
                        itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Material(
                                  elevation: 0,
                                  shape: CircleBorder(),
                                  clipBehavior: Clip.hardEdge,
                                  color: Colors.transparent,
                                  child: Ink.image(
                                    image:
                                        AssetImage("assets/images/avatar1.jpg"),
                                    fit: BoxFit.cover,
                                    width: 60,
                                    height: 60,
                                    child: InkWell(
                                      onTap: () {},
                                    ),
                                  ),
                                ),
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
                      height: 150,
                      padding: const EdgeInsets.all(10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: getServiceCategories(),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      child: Text(
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

  List<String> serviceCategories = [
    "Modiste",
    "Tailor",
    "Brand Owner",
    "Repair",
    "Design",
    "Shops"
  ];

  Map serviceCatToIcon = {
    "Modiste": Image.asset("assets/icons/Modiste.png", width: 70),
    "Tailor": Image.asset("assets/icons/Tailor.png", width: 70),
    "Brand Owner": Image.asset("assets/icons/Konveksi.png", width: 70),
    "Repair": Image.asset("assets/icons/Repair.png", width: 70),
    "Design": Image.asset("assets/icons/Design.png", width: 70),
    "Shops": Image.asset("assets/icons/Shops.png", width: 70),
  };

  Widget getCategoryContainer(String categoryName) {
    return Container(
      margin: const EdgeInsets.all(10),
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
              icon: serviceCatToIcon[categoryName],
              onPressed: () {},
            ),
          ),
          // const Padding(padding: EdgeInsets.all(1)),
          Text(categoryName, style: titleStyleLighterBlack),
        ],
      ),
    );
  }

  List<Widget> getServiceCategories() {
    List<Widget> serviceCategoriesCards = [];
    List<Widget> rows = [];
    int i = 0;
    for (String category in serviceCategories) {
      if (i < 2) {
        rows.add(getCategoryContainer(category));
        i++;
      } else {
        i = 0;
        serviceCategoriesCards.add(Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: rows,
        ));
        rows = [];
        rows.add(getCategoryContainer(category));
        i++;
      }
    }
    if (rows.length > 0) {
      serviceCategoriesCards.add(Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: rows,
      ));
    }
    return serviceCategoriesCards;
  }
}
