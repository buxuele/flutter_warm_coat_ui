class Product {
  final String brand;
  final String name;
  final int price;
  final List<String> imagePath;

  Product(this.brand, this.name, this.price, this.imagePath);
}


final List<Product> products = [
  Product("BABATON", "Stedman \nWool Coat", 328,
    [
     "assets/images/coat_0.jpeg",
     "assets/images/coat_1.jpeg",
     "assets/images/coat_2.jpeg",
     "assets/images/coat_3.jpeg",
    ],
  ),

  Product("HMBRAND", "Snow WhiteHeavy Coat ", 399,
    [
      "assets/images/light_coat_0.jpeg",
      "assets/images/light_coat_1.jpeg",
      "assets/images/light_coat_2.jpeg",
      "assets/images/light_coat_3.jpeg",
    ],
  ),

];