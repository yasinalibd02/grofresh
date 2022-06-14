 import 'package:flutter/material.dart';

class CategoriesSingleItem extends StatefulWidget {
  final String title;
  final String image;
  const CategoriesSingleItem({Key? key ,required this.image,required this.title}) : super(key: key);

  @override
  State<CategoriesSingleItem> createState() => _CategoriesSingleItemState();
}

class _CategoriesSingleItemState extends State<CategoriesSingleItem> {
 
  @override
  Widget build(BuildContext context) {

     final DeHi=MediaQuery.of(context).size.height;
     final DeWi=MediaQuery.of(context).size.width;

    return Container(
           
           width:double.infinity,
           decoration: BoxDecoration(
             color: Colors.black26,
             borderRadius:BorderRadius.circular(10)

           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: CircleAvatar(
                     radius: 34,
                     
                     
                     backgroundImage: AssetImage(widget.image),
                     
                      
                   ),
                 ),
               ),

               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(widget.title,style: TextStyle(fontSize: 14),),
                 ),
               ),
             ],
           ),
          );
    
  }
}