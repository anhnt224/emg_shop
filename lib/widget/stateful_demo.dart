import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  int _quantity = 0;

  void _incrementQuantity() {
    setState(() {
      _quantity += 1;
    });
  }

  void _decrementQuantity() {
    setState(() {
      _quantity -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 32,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 32,
            height: 32,
            child: IconButton(
              onPressed: _decrementQuantity,
              icon: const Icon(Icons.remove),
              padding: EdgeInsets.zero,
              splashRadius: 16,
              iconSize: 20,
            ),
          ),
          Container(
            height: 32,
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Center(child: Text(_quantity.toString())),
          ),
          SizedBox(
            width: 32,
            height: 32,
            child: IconButton(
              onPressed: _incrementQuantity,
              icon: const Icon(Icons.add),
              padding: EdgeInsets.zero,
              splashRadius: 16,
              iconSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
