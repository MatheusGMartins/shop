import 'package:flutter/material.dart';
import 'package:shop/components/product_grid.dart';

class ProductosOverviewPage extends StatelessWidget {
  const ProductosOverviewPage({super.key});

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
      body: const ProductGrid(),
    );
  }
}


