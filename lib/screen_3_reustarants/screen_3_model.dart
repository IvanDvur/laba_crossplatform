class Cathegory {
  final String title;
  final String icon;

  const Cathegory({required this.title, required this.icon});
}

class Restaurant {
  final String name;
  final List<String> cathegory;
  final String image;

  const Restaurant(
      {required this.image, required this.name, required this.cathegory});
}
