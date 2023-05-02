import 'package:emg_shop/bloc/app_cubit.dart';
import 'package:emg_shop/bloc/app_state.dart';
import 'package:emg_shop/modules/auth/bloc/auth_cubit.dart';
import 'package:emg_shop/modules/product/bloc/cart_cubit.dart';
import 'package:emg_shop/modules/product/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/user.dart';
import '../../../route/route_name.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key, required this.user});

  final User user;

  final _products = [
    Product(id: "1", name: "San pham 1", desc: "Mo ta", quantity: 0),
    Product(id: "2", name: "San pham 2", desc: "Mo ta", quantity: 0),
    Product(id: "3", name: "San pham 3", desc: "Mo ta", quantity: 0)
  ];

  void _addProductToCard(Product product, BuildContext context) {
    final cartCubit = context.read<CartCubit>();
    cartCubit.addProduct(product);
    Navigator.pushNamed(context, RouteName.cart);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main'),
      ),
      body: BlocProvider(
        create: (context) => AuthCubit(),
        child: BlocBuilder<AppCubit, AppState>(
          builder: (context, state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final product = _products[index];
                return InkWell(
                  onTap: () {
                    _addProductToCard(product, context);
                  },
                  child: ListTile(
                    title: Text(product.name),
                  ),
                );
              },
              itemCount: _products.length,
            );
          },
        ),
      ),
    );
  }
}
