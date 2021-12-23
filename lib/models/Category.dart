class Category {
  final String icon, title;

  const Category({required this.icon, required this.title});
}

const List<Category> demo_categories = [
  Category(icon: "assets/icons/Modiste.png", title: "Modiste"),
  Category(icon: "assets/icons/Tailor.png", title: "Tailor"),
  Category(icon: "assets/icons/Konveksi.png", title: "Brand Owner"),
  Category(icon: "assets/icons/Repair.png", title: "Repair"),
  Category(icon: "assets/icons/Shops.png", title: "Shops"),
  Category(icon: "assets/icons/Design.png", title: "Design"),
];
