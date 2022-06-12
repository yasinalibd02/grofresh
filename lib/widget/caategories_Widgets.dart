import 'package:flutter/material.dart';

class singleCategories extends StatelessWidget {
  String images;
  String title;
  String Weight;
  String price;

  singleCategories({
    required this.images,
    required this.title,
    required this.Weight,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return 
       Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
        child: Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black26,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: new DecorationImage(
                          image: AssetImage(images),
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(title),
                      Text(Weight,
                          style: TextStyle(fontSize: 12, color: Colors.grey))
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(price,
                          style: TextStyle(
                            fontSize: 14,
                          )),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.add,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      );
    
  }
}