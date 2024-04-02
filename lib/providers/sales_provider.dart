import 'package:flutter/material.dart';

// Define a class to represent sales data
class Sale {
  final String productName;
  final double price;

  Sale({required this.productName, required this.price});
}

// Define a class to manage the state of sales data
class SalesProvider extends ChangeNotifier {
  // Dummy list of sales data for demonstration
  List<Sale> _sales = [
    Sale(productName: 'Product A', price: 10.0),
    Sale(productName: 'Product B', price: 20.0),
    Sale(productName: 'Product C', price: 15.0),
  ];

  // Method to get the list of sales data
  List<Sale> get sales => _sales;

  // Method to add a new sale
  void addSale(Sale sale) {
    _sales.add(sale);
    notifyListeners(); // Notify listeners of the change
  }

  // Method to remove a sale
  void removeSale(Sale sale) {
    _sales.remove(sale);
    notifyListeners(); // Notify listeners of the change
  }
}
