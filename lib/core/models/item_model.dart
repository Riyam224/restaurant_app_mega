class Ingredient {
  final String name;
  final String imageUrl;

  Ingredient({
    required this.name,
    required this.imageUrl,
  });
}

class Item {
  final String name;
  final String imageUrl;
  final String description;
  final double price;
  final List<Ingredient> ingredients;

  Item(
      {required this.name,
      required this.imageUrl,
      required this.description,
      required this.price,
      required this.ingredients});
}
