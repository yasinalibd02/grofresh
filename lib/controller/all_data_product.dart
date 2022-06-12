

import '../data/all_products.data.dart';
import '../models/all_products.dart';

class allDataClass {
  List<allProducts> faceData(category) {
    List<allProducts> newList = [];
    for (int i = 0; i < product.length; i++) {
      if (product[i].cateTitle == category) {
        newList.add(product[i]);
      }
    }

    return newList;
  }
}