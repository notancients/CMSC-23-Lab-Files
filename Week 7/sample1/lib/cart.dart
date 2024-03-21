import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample1/model/item.dart';
import 'package:sample1/provider/shoppingcart.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    // List<Item> products = context.read<ShoppingCart>().cart;
    List<Item> products = context.watch<ShoppingCart>().cart;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(Icons.star),
                          title: Text(products[index].name),
                          trailing: TextButton(
                            child: const Text("Remove"),
                            onPressed: () {
                              context
                                  .read<ShoppingCart>()
                                  .removeItem(products[index]);
                            },
                          ),
                        );
                      }))
            ],
          ),
        ));
  }
}
