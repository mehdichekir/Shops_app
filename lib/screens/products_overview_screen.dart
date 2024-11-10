import 'package:flutter/material.dart';
import 'package:shops_app/providers/product.dart';
import 'package:shops_app/widgets/product_grid.dart';
import 'package:shops_app/widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
   ProductsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop'),
      ),
      body: ProductGrid()
    );
  }
}

