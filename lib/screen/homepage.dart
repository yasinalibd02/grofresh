import 'package:flutter/material.dart';
import 'package:grofresh/models/daily_needs_model.dart';

import '../controller/all_data_product.dart';
import '../data/categories_data.dart';
import '../data/daily_needs_data.dart';
import '../models/all_products.dart';
import '../widget/drawer_widget.dart';

import '../widget/home_widgets/categories.dart';
import '../widget/home_widgets/daily_needs.dart';
import '../widget/home_widgets/popular_items.dart';
import '../widget/home_widgets/top_slider.dart';


class homePage extends StatefulWidget {

  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
   List<allProducts> FirstPart = allDataClass().faceData("firstpart");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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


          
 //**************      This is categores Widgets     ************88888
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
                    physics: NeverScrollableScrollPhysics(),
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

//This is start to listView Builder widget
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
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
            height: 207,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dailyneed.length,
                itemBuilder: (context, index) {
                  return dailyNeeds(
                    images: dailyneed[index].images,
                    title: dailyneed[index].title,
                    Weight: dailyneed[index].Weight,
                    price: dailyneed[index].price,
                  );
                }),
          ),

          //this is listview.buildder listTile widget
          Padding(
            padding:
                const EdgeInsets.only(left: 5, right: 5, bottom: 10, top: 8),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black26,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "populer Items",
                  ),
                )),
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: dailyneed.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> details_products(dailyneed[index])

              
                          
                          
                          ));
                        },
                        child: popular_item(
                          images: dailyneed[index].images,
                          title: dailyneed[index].title,
                          price: dailyneed[index].price,
                          Weight: dailyneed[index].Weight,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

details_products(dailyNeedsModel dailyneed) {
  return Text(dailyneed.title);
}
