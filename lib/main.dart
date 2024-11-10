import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shops_app/providers/products.dart';
import 'package:shops_app/screens/product_detail_screen.dart';
import 'package:shops_app/screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>Products(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        routes: {
          ProductDetailScreen.routeName :(ctx)=>ProductDetailScreen()
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
       return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('MyShop'),
        ),
        body: Center(
          child: ProductsOverviewScreen(),
        ),
      );
  }
}
