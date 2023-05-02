import 'package:bloc/bloc.dart';

import '../models/product.dart';

class CartCubit extends Cubit<List<Product>> {
  CartCubit() : super([]);

  void addProduct(Product product) {
    if (state.map((e) => e.id).contains(product.id)) {
      return;
    }

    state.add(product.copyWith(quantity: 1));
    emit(state);
  }

  void removeProduct(Product product) {}

  void incrementQuantity(Product product) {
    final List<Product> newState = [];
    for (final e in state) {
      if (e.id == product.id) {
        e.quantity += 1;
        newState.add(e);
        continue;
      }
      newState.add(e);
    }
    emit(newState);
  }
}
