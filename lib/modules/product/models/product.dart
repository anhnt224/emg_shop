// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  final String id;
  String name = "";
  String desc = "";
  int quantity = 0;

  Product({
    required this.name,
    required this.desc,
    required this.quantity,
    required this.id,
  });

  Product copyWith({
    String? id,
    String? name,
    String? desc,
    int? quantity,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      quantity: quantity ?? this.quantity,
    );
  }
}
