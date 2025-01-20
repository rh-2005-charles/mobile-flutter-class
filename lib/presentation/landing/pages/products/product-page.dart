import 'package:flutter/material.dart';
import 'package:semana3/core/colors.dart';
import 'package:semana3/core/styles.dart';
import 'package:semana3/models/product.dart';
import 'package:semana3/presentation/components/hover_text_button.dart';
import 'package:semana3/presentation/landing/pages/products/product_grid.dart';
import 'package:semana3/presentation/landing/pages/products/product_data.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  // Inicializamos con la categoría 1
  String selectedCategory = 'Camisas';

  // Función para cambiar la categoría
  void _onCategorySelected(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> products = categoryProducts[selectedCategory] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Página de Productos"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          gradient: AppStyles.secondaryBgGradient,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Products",
                  style: AppStyles.title,
                ),
              ),
              const SizedBox(height: 10),
              // Contenedor con botones de categorías y grid
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.ligthBg,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          HoverTextButton(
                            text: 'Camisas',
                            onPressed: () => _onCategorySelected('Camisas'),
                          ),
                          const SizedBox(width: 40),
                          HoverTextButton(
                            text: 'Zapatillas',
                            onPressed: () => _onCategorySelected('Zapatillas'),
                          ),
                          const SizedBox(width: 40),
                          HoverTextButton(
                            text: 'Gorras',
                            onPressed: () => _onCategorySelected('Gorras'),
                          ),
                          const SizedBox(width: 40),
                          HoverTextButton(
                            text: 'Lentes',
                            onPressed: () => _onCategorySelected('Lentes'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Grid de productos
                      Expanded(
                        child: ProductGrid(
                          products: products,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
