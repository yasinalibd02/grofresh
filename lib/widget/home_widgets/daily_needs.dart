import 'package:flutter/cupertino.dart';


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

    return Container(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
                    Center(
                      child: Container(
                        height: 150,
                        width:170,

                        decoration: BoxDecoration(
                          

                          image: new DecorationImage(
              image: AssetImage(images,),
            fit: BoxFit.cover,
          ),
                        ),
                      ),
                    ),

          Text(title),
          SizedBox(height: 5,) ,
           Text(Weight),
           SizedBox(height: 5,) ,
           Text(price,),
          SizedBox(width: 10,)

        ],
      ),
    );
    
  }
}