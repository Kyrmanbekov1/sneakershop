// import 'dart:ffi';

// import 'package:flutter/material.dart';

// class BagProvider extends ChangeNotifier{
//   List <String> sneakers = [];
//   List<String> get sneaker => sneakers;
 
  

//   void addToBag(String sneaker){
//    sneakers.add(sneaker);
//     notifyListeners();
//   }

//   void clearCard(){
//     sneaker.clear();
//     notifyListeners();
//   }
//   void totalPrice(String price){
//      price += price;
//      notifyListeners();
//   }
 
 
// }

import 'package:flutter/material.dart';

class BagProvider extends ChangeNotifier {
  List<String> sneakers = [];
  List<String> get sneaker => sneakers;
  int totalPrice = 0;

  void addToBag(String sneaker) {
    sneakers.add(sneaker);
    notifyListeners();
  }

  void clearCard() {
    sneakers.clear();
    totalPrice = 0; 
    notifyListeners();
  }

  void addPrice(int price) {
    totalPrice += price;
    notifyListeners();
  }
  int getTotalPrice() {
    return totalPrice;
  }
}

