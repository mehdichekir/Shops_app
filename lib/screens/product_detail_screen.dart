import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shops_app/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
    static const routeName = '/product-detail';

  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductId=ModalRoute.of(context)!.settings.arguments as String ;
  final loadedProduct =Provider.of<Products>(context,listen: false).FindById(ProductId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title)
      ),
    );
  }
}