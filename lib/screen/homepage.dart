import 'package:flutter/material.dart';

import '../data/categories_data.dart';
import '../data/daily_needs_data.dart';
import '../widget/drawer/drawer_widget.dart';

import '../widget/home_widgets/categories.dart';
import '../widget/home_widgets/daily_needs.dart';
import '../widget/home_widgets/top_slider.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Image.asset(
                  "assets/image/menu.png",
                  height: 30,
                ))),
        title: Text(
          "GroFresh",
          style: TextStyle(color: Colors.green[400]),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              size: 34,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: draweWidget(),
      body: ListView(
        children: [
          //This is Top Slider
          TopSlider(),

          //This is categores Widgets
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black26,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Categories",
                  ),
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
                height: 230,
                child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 13,
                    mainAxisSpacing: 13,
                    childAspectRatio: 2 / 2,
                    children: List.generate(
                        categorie.length,
                        (index) => CategoriesSingleItem(
                              image: categorie[index].image,
                              title: categorie[index].text,
                            )))),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black26,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Daily Needs",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                )),
          ),

          Container(
            height: 230,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                
                itemCount: dailyneed.length,
                itemBuilder: (context, index) {
                  return dailyNeeds(
                    images: dailyneed[index].images,
                    title: dailyneed[index].title,
                    Weight: dailyneed[index].Weight,
                    price: dailyneed[index].price,
                  );
                }),
          )
        ],
      ),
    );
  }
}
