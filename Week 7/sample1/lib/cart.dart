import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(Icons.star),
                          title: const Text("TODO PLACE PRODNAME HERE"),
                          trailing: TextButton(
                            child: const Text("Remove"),
                            onPressed: () {
                              print("Remove this item.");
                            },
                          ),
                        );
                      }))
            ],
          ),
        ));
  }
}
