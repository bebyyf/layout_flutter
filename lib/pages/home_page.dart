import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';
import '../widgets/footer.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, image: 'images/sugar.png', stock: 10, rating: 4.5),
    Item(name: 'Salt', price: 2000, image: 'images/salt.png', stock: 25, rating: 4.8),
    Item(name: 'Coffee', price: 10000, image: 'images/coffee.png', stock: 15, rating: 4.9),
    Item(name: 'Rice', price: 12000, image: 'images/rice.png', stock: 30, rating: 4.7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Aplikasi Belanja'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ItemCard(
                    item: item,
                    onTap: () {
                      Navigator.pushNamed(context, '/item', arguments: item);
                    },
                  );
                },
              ),
            ),
          ),
          const Footer(), // Footer di bawah
        ],
      ),
    );
  }
}
