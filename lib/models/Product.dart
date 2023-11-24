class Product {
  int id;
  String name;
  int price;
  String imageUrl;
  String category;
  String brand;
  String guaranteed;
  String color;
  String status;
  String description;
  bool best_selling;

  Product(
      this.id,
      this.name,
      this.price,
      this.imageUrl,
      this.category,
      this.brand,
      this.guaranteed,
      this.color,
      this.status,
      this.description,
      this.best_selling);

  @override
  String toString() {
    return '{id: $id, name: $name, price: $price, imageUrl: $imageUrl, category: $category, brand: $brand, guaranteed: $guaranteed, color: $color, status: $status, description: $description, best_selling: $best_selling}';
  }
}
