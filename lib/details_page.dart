import 'package:farmer_ui/vegitables.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.vegitables});
  final Vegitables vegitables;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fresh ${vegitables.name}'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: 500,
          height: 500,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Image.network(vegitables.image),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      vegitables.name,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '₹ ${vegitables.price.toString()}',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      child: const Text('Buy Now'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
