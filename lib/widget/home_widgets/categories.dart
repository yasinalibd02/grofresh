 import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoriesSingleItem extends StatelessWidget {
  final String title;
  final String image;
  const CategoriesSingleItem({Key? key ,required this.image,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
           height: 200,
           width:double.infinity,
           decoration: BoxDecoration(
             color: Colors.black,
             borderRadius:BorderRadius.circular(10)

           ),
           child: Column(
             children: [
               CircleAvatar(
                 backgroundImage: AssetImage(image),
                  
               ),

               Text(title),
             ],
           ),
          );
    
  }
}