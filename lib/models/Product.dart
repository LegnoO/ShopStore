class Product {
  int id;
  String name;
  int price;
  String imageUrl;
  String category;
  String brand;
  String guaranteed;

  Product(this.id, this.name, this.price, this.imageUrl, this.category,
      this.brand, this.guaranteed);

  @override
  String toString() {
    return '{id: $id, name: $name, price: $price, imageUrl: $imageUrl, category: $category, brand: $brand, guaranteed: $guaranteed}';
  }
}
