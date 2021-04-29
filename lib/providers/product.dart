import 'package:flutter/foundation.dart'; //this is used to use @required in constructor.

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    this.isFavorite = false,
  }); //{} this curly braces are used to named arguments in cosntructor
  void toggleFavoriteStatus() {
    isFavorite = !isFavorite; //it convert into true to false and vice versa.
    notifyListeners(); //notify Listener is used as like setstate
  }
}
