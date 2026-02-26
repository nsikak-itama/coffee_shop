import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier{
  final List<Coffee> _shop = [
    Coffee(
      name: "Long Black", 
      price: "4.19",  
      imagePath: "lib/images/coffee.png"
    ),

    Coffee(
      name: "Latte", 
      price: "5.09", 
      imagePath: "lib/images/latte.png" 
    ),

    Coffee(
      name: "Expresso", 
      price: "10.45", 
      imagePath: "lib/images/expresso.png"
    ),

    Coffee(
      name: "Iced coffee", 
      price: "6.87", 
      imagePath: "lib/images/tea.png"
    )
  ];

  List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;

  List<Coffee> get userCart => _userCart;

  void addItem(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeFromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }

}