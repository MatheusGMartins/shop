import 'package:flutter/material.dart';
import 'package:shop/components/product_item.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductosOverviewPage extends StatelessWidget {
  final List<Product> loadedProductes = duymmyProducts;

  ProductosOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: double.infinity, //MediaQuery.of(context).size.width * 0.65,
          child: Text(
            'Minha loja',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProductes.length,
        itemBuilder: (ctx, index) {
          return ProductItem(product: loadedProductes[index]);
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
