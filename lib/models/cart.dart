import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> availableShoes = [
    //List of available shoes
    Shoe(' The chunky legend of basketball turned fashion staple.',
        name: 'Airforce', price: 260, imageUrl: 'lib/images/airforce.png'),
    Shoe(' Clean and classic tennis vibes for everyday wear.',
        name: 'Court Vision',
        price: 300,
        imageUrl: 'lib/images/court vision.jfif'),
    Shoe(" Bold colors and collabs, a skater and collector's favorite.",
        name: 'Dunk High', price: 280, imageUrl: 'lib/images/dunkhigh.jfif'),
    Shoe("MJ's legacy on your feet, performance meets cultural icon.",
        name: 'Air Jordan', price: 300, imageUrl: 'lib/images/airjordan.jpg')
  ];
  //list of items in cart
  final List<Shoe> _userCart = [];

  //get list of shoes for sale
  List<Shoe> get shoeList => availableShoes;

  //get cart
  List<Shoe> get userCart => _userCart;

  //add items to cart
  void addItem(Shoe shoe) {
    _userCart.add(shoe);
    notifyListeners();
  }

  //remove items from the cart
  void removeItem(Shoe shoe) {
    _userCart.remove(shoe);
    notifyListeners();
  }
}
