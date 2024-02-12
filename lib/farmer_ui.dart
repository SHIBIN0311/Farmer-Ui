import 'package:farmer_ui/itemcard.dart';
import 'package:farmer_ui/vegitables.dart';
import 'package:flutter/material.dart';

class FarmerUiPage extends StatelessWidget {
  const FarmerUiPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Farmers Fresh Zone"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: vegitables.length,
        itemBuilder: (context, index) =>
            ItemCard(vegitables: vegitables[index]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Go To Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
        ],
        selectedItemColor: Colors.white,
      ),
    );
  }
}
