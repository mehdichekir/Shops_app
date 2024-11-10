import 'package:flutter/material.dart';
import 'package:shops_app/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
   ProductItem({required this.id, required this.title , required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
        
        footer: GridTileBar(title: Text(title, textAlign: TextAlign.center,),
        backgroundColor: Colors.black87,
        leading: const IconButton(icon: Icon(Icons.favorite),
        onPressed: null,
        color: Colors.deepOrange,),
        trailing: const IconButton(icon: Icon(Icons.shopping_cart),
        onPressed: null,
        color: Colors.deepOrange,),),
        child: GestureDetector(
          onTap: (){Navigator.of(context).pushNamed(ProductDetailScreen.routeName, arguments: id);} ,
          child: Image.network(imageUrl,fit: BoxFit.cover,)),),
      );
  }
}