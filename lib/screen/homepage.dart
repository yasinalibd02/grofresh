import 'package:flutter/material.dart';
import '../data/categories_data.dart';
import '../widget/drawer/drawer_widget.dart';
import '../widget/home_widgets/categories.dart';
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
         Text("Categories"),

         Container(
           height: 400,
           child: GridView.builder(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 140,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
                itemCount: categorie.length,
             itemBuilder: (context,index){
             var data=categorie[index];
             return CategoriesSingleItem(image: data.image, title: data.text,
               
             );

             
           }),
         )
          
        ],
      ),
    );
  }
}
