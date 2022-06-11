import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dailyNeeds extends StatelessWidget {
  String images;
  String title;
  String Weight;
  String price;

  dailyNeeds({
    required this.images,
    required this.title,
    required this.Weight,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 250,
        width: 150,
        decoration: BoxDecoration(
            color: Color(0xff000033), borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4, bottom: 4),
                child: Center(
                  child: Container(
                    height: 120,
                    width: 146,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                        image: AssetImage(
                          images,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                title,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                Weight,
                style: TextStyle(fontSize: 11),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
