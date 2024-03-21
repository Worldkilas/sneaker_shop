import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class CartItem extends StatelessWidget {
  final Shoe shoe;
  const CartItem({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(shoe.imageUrl),
        title: Text(shoe.name),
        subtitle: Text(shoe.price.toString()),
      ),
    );
  }
}
