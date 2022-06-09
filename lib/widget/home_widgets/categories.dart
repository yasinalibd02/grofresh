 import 'package:flutter/material.dart';

class CategoriesSingleItem extends StatelessWidget {
  final String title;
  final String image;
  const CategoriesSingleItem({Key? key ,required this.image,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
           height: 220,
           width:double.infinity,
           decoration: BoxDecoration(
             color: Colors.black26,
             borderRadius:BorderRadius.circular(10)

           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 12),
                 child: CircleAvatar(
                   radius: 25,
                   
                   
                   backgroundImage: AssetImage(image),
                   
                    
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text(title,style: TextStyle(fontSize: 14),),
               ),
             ],
           ),
          );
    
  }
}