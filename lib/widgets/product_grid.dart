
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shops_app/providers/product.dart';
import 'package:shops_app/providers/products.dart';
import 'package:shops_app/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 3/2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10),
       itemBuilder: (ctx,i)=>ProductItem(
        id: products[i].id,
         title: products[i].title,
          imageUrl: products[i].imageUrl),
       padding: const EdgeInsets.all(10),
       itemCount: products.length,);
  }
}