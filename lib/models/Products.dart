





import 'dart:ui';

import 'package:restaurant_ui/colors.dart';

class Product {
  final String image, title;
  final Color? color;


  Product({
    required this.image,
    required this.title,
    this.color,

  });
}


List<Product> products = [

  Product(
      color: red,
      image: 'assets/images/image1.png',
      title: "Burger"
  ),

  Product(
      image: 'assets/images/image1.png',
      title: "Pizza"
  ),

  Product(
      image: 'assets/images/image1.png',
      title: "Cake"
  ),


];