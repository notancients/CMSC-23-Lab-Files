import 'package:flutter/material.dart';
import 'package:sample1/model/item.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  List<Item> products = [
    Item("Shampoo", 12.5, 123),
    Item("Soap", 13.8, 862),
    Item("Toothpaste", 7.54, 532)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Catalog")),
        body: Center(
          child: Column(
            children: [
              ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: const Icon(Icons.shop),
                        title: Text(products[index].name),
                        trailing: TextButton(
                          child: const Text("Add"),
                          onPressed: () {
                            print("Add to cart.");
                          },
                        ));
                  })
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart)
        onPressed: () {
          Navigator.pushNamed(context, routeName)
        },
        ),);
  }
}
