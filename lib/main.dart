import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> shoppingItems = [
    'Apples',
    'Bananas',
    'Bread',
    'Milk',
    'Eggs',
    'Oil',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(shoppingItems),
      debugShowCheckedModeBanner: false, // Disable the debug banner
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> shoppingItems;

  MyHomePage(this.shoppingItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Shopping List')),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart), // Add the shopping cart icon
            onPressed: () {
              // Add your shopping cart action here
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.shopping_cart), // Shopping cart icon
            title: Text(shoppingItems[index]), // Item text
            // Add more properties or actions for each item if needed
          );
        },
      ),
    );
  }
}
