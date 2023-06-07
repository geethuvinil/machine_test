import 'dart:io';

class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double getTotalPrice() {
    return price * quantity;
  }

  void increaseQuantity(int amount) {
    quantity += amount;
  }
}

void main() {
  List<Product> products = [
    Product('Apple', 1.5, 5),
    Product('Banana', 0.75, 10),
    Product('Orange', 2.0, 8),
  ];

  for (Product product in products) {
    stdout.write('Name: ${product.name}');
        stdout.writeln();
        stdout.write('Total Price: \$${product.getTotalPrice().toStringAsFixed(2)}');
          stdout.writeln();
     
    product.increaseQuantity(10);
  }
}
