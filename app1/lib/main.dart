import 'package:flutter/material.dart';

class Product {
  const Product({required this.name});
  final String name;
}

typedef Cart = Function(Product product, bool incart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({
    required this.product,
    required this.incart,
    required this.onCartChanged,
  }) : super(key: ObjectKey(product));
  final Product product;
  final bool incart;
  final Cart onCartChanged;

  Color _getcolor(BuildContext context) {
    return incart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle? _gettextstyle(BuildContext context) {
    if (!incart) return null;

    return const TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onCartChanged(product, incart);
      },
      leading: CircleAvatar(
        backgroundColor: _getcolor(context),
        child: Text(product.name[0]),
      ),
      title: Text(
        product.name,
        style: _gettextstyle(context),
      ),
    );
  }
}

// Changing list

class ShoppingList extends StatefulWidget {
  const ShoppingList({required this.products, Key? key}) : super(key: key);

  final List<Product> products;

  @override
  State<ShoppingList> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  final shoppingcart = <Product>{};

  void handlecartchange(Product product, bool incart) {
    setState(() {
      if (!incart) {
        shoppingcart.add(product);
      } else {
        shoppingcart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product) {
          return ShoppingListItem(
            product: product,
            incart: shoppingcart.contains(product),
            onCartChanged: handlecartchange,
          );
        }).toList(),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: "Shopping List",
      home: ShoppingList(
        products: [
          Product(name: 'Eggs'),
          Product(name: 'Chicken Breast'),
          Product(name: 'Chips'),
          Product(name: 'Milk'),
        ],
      ),
    ),
  );
}
