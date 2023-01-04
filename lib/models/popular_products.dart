


class PopularProducts{

final String name;
final String title;
final String price;
final String image;
final String description;



PopularProducts({
  required this.name,
  required this.title,
  required this.price,
  required this.image,
  required this.description,
});




}

 List<PopularProducts> popularProducts = [

   PopularProducts(
       name: "Nikel Maharjan burger",
       title: "Chicken Burger",
       description: "A signature flame-grilled chicken patty topped with smoked beef",
       image: 'assets/images/image1.png',
       price: "1900",


   ),

   PopularProducts(
     name: "Maharjan Pizza",
     title: "Chicken Pizza",
     description: "dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese",
     image: 'assets/images/image2.png',
     price: "800",

   ),

   PopularProducts(
     name: "Nikel Maharjan Sandwich",
     title: "Chicken Sandwich",
     description: "A signature flame-grilled chicken patty topped with smoked beef",
     image: 'assets/images/image3.png',
     price: "9090",

   ),




 ];


