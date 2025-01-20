import 'package:flutter/material.dart';
import 'package:semana3/models/product.dart';
import 'package:semana3/presentation/landing/pages/products/product_cart.dart'; // Importamos el modelo Product

class ProductGrid extends StatelessWidget {
  final List<Product> products;

  const ProductGrid({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.9,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCard(
          title: products[index].title,
          price: products[index].price,
          imageUrl: products[index].imageUrl,
        );
      },
    );
  }
}
