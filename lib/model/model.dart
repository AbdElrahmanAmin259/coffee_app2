class DrinkModel {
  final String image;
  final String name;
  final String title;
  final String price;
  DrinkModel({
    required this.image,
    required this.name,
    required this.title,
    required this.price,
  });

  static List<DrinkModel> drinks = [
    DrinkModel(
      image: "assets/drinks/Banana.png",
      name: "Banana",
      title: "20 Flavors of your drink",
      price: "28\$",
    ),
    DrinkModel(
      image: "assets/drinks/Brownie Island.png",
      name: "Brownie Island",
      title: "20 Flavors of your drink",
      price: "20\$",
    ),
    // DrinkModel(
    //   image: "assets/drinks/burger.png",
    //   name: "burger",
    //   title: "24 Flavors of your drink",
    //   price: "50\$",
    // ),

    // DrinkModel(
    //   image: "assets/drinks/carmel.png",
    //   name: "carmel",
    //   title: "40 Flavors of your drink",
    //   price: "40\$",
    // ),
    // DrinkModel(
    //   image: "assets/drinks/chicken.png",
    //   name: "chicken",
    //   title: "10 Flavors of your drink",
    //   price: "35\$",
    // ),
    DrinkModel(
      image: "assets/drinks/Chocolate.png",
      name: "Chocolate",
      title: "50 Flavors of your drink",
      price: "47\$",
    ),
    DrinkModel(
      image: "assets/drinks/Strawberry.png",
      name: "Strawberry",
      title: "100 Flavors of your drink",
      price: "90\$",
    ),

    DrinkModel(
      image: "assets/drinks/Peanut Butter.png",
      name: "Peanut Butter",
      title: "30 Flavors of your drink",
      price: "26\$",
    ),
    DrinkModel(
      image: "assets/drinks/Salted Caramel.png",
      name: "Salted Caramel",
      title: "60 Flavors of your drink",
      price: "70\$",
    ),
    DrinkModel(
      image: "assets/drinks/Chocolate.png",
      name: "Chocolate",
      title: "50 Flavors of your drink",
      price: "47\$",
    ),

    DrinkModel(
      image: "assets/drinks/Strawberry.png",
      name: "Strawberry",
      title: "100 Flavors of your drink",
      price: "90\$",
    ),
    DrinkModel(
      image: "assets/drinks/Brownie Island.png",
      name: "Brownie Island",
      title: "20 Flavors of your drink",
      price: "20\$",
    ),
  ];
}
