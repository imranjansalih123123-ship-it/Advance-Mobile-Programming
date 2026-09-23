class Product {
  // final fields
  final String name;
  final double price;
  final String category;
  final bool isAvailable;

  // Constructor with required named parameters
  Product({
    required this.name,
    required this.price,
    required this.category,
    this.isAvailable = true, // default value
  });

  // Named constructor for a free product
  Product.free({
    required this.name,
    required this.category,
  })  : price = 0.0,
        isAvailable = true;

  // Display product information
  void displayInfo() {
    print(
      "Product: $name | "
      "Price: \$${price.toStringAsFixed(2)} | "
      "Category: $category | "
      "Available: $isAvailable",
    );
  }
}

void main() {
  // Create a normal product without 'new'
  final Product phone = Product(
    name: "iPhone",
    price: 999.99,
    category: "Mobile",
  );

  // Create another product
  final Product laptop = Product(
    name: "Laptop",
    price: 1200.00,
    category: "Computer",
    isAvailable: false,
  );

  // Create a free product using the named constructor
  final Product course = Product.free(
    name: "Dart Beginner Course",
    category: "Education",
  );

  // Print information
  phone.displayInfo();
  laptop.displayInfo();
  course.displayInfo();
}
