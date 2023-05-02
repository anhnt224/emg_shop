import 'package:emg_shop/modules/product/bloc/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  void _handleAddProduct(BuildContext context, Product product) {
    final cartCubit = context.read<CartCubit>();
    cartCubit.incrementQuantity(product);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Giỏ hàng')),
      body: SafeArea(
        child: BlocBuilder<CartCubit, List<Product>>(
          builder: (context, state) {
            print("== REBUILD $state");
            final products = state;
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return InkWell(
                        child: ListTile(
                          title: Text("${product.name} - ${product.quantity}"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                child: const Icon(Icons.add),
                                onTap: () =>
                                    _handleAddProduct(context, product),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const InkWell(child: Icon(Icons.remove))
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: products.length,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Check Out')),
                const SizedBox(
                  height: 32,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
