



import 'package:flutter/material.dart';
import 'package:grofresh/screen/homepage.dart';

import '../models/daily_needs_model.dart';

details_products(dailyNeedsModel dailyneed) {
  return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading:IconButton(icon: Icon(Icons.close), onPressed: () { 

         
        } 
        
        ),
        
        
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),

      body: ListView(
        children: [

         Padding(
           padding: const EdgeInsets.only(top: 10,bottom: 10,),
           child: Image.asset(dailyneed.images,height: 200,width: 300,),
         ),
             
             Container(
              height:100,
              width:double.infinity,

              decoration: BoxDecoration(
               
                
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight:  Radius.circular(15),

                ),

              ),

              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(dailyneed.title,style: TextStyle(color: Colors.grey,fontSize: 18),),
                    Text(dailyneed.price,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),


                    Padding(
                      padding: const EdgeInsets.only(right: 10,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(dailyneed.Weight,style: TextStyle(color: Colors.grey,fontSize: 12),),

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
                ),
              ),
             ),

             Container(
           
              height: 100,
               child: Padding(
                 padding: const EdgeInsets.only(left:8.0),
                 child: Row(
                   children: [
                     Text("Total amount : "),
                     Text("45.8 \$",style: TextStyle(color: Colors.green),),
                   ],
                 ),
               ),
             ),
             Container(
              height: 226,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                    Text("Description",style: TextStyle(),),
                      Icon(Icons.arrow_forward)
                     ],
                  ),
                  SizedBox(height: 5,),

                  Text("amar soner bangla ami tomai valobashi,chirodin tomer aksh tomer"
          "batash amar prane aoma amar pran ebajaai bashi soner bangla ami tomai valobashi")
                ]),
              ),
             ),

             Container(
             height: 55,

              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(8)
                
              ),
               child: ElevatedButton(onPressed: (){}, child: 
               Text("Add to Cart ",style: TextStyle(color: Colors.white,),),

               style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.green),
    ),
               
               
               ),
             ),

             




        ],
      ),
    );
  }


