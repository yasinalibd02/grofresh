import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detailsProducts extends StatelessWidget {
  const detailsProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),

      body: ListView(
        children: [

         Padding(
           padding: const EdgeInsets.only(top: 10,bottom: 10,),
           child: Image.asset("assets/image/banana.jpg",height: 200,width: 300,),
         ),

         
        ],
      ),
    );
  }
}
