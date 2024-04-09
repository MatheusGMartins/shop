import 'package:flutter/material.dart';
import 'package:shop/components/product_grid.dart';

enum FilterOption {
  Favorite,
  All,
}

class ProductosOverviewPage extends StatefulWidget {
  const ProductosOverviewPage({super.key});

  @override
  State<ProductosOverviewPage> createState() => _ProductosOverviewPageState();
}

class _ProductosOverviewPageState extends State<ProductosOverviewPage> {
  bool _showFavoriteOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: double.infinity, //MediaQuery.of(context).size.width
          child: Text(
            'Minha loja',
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOption.Favorite,
                child: Text('Somente Favoritos'),
              ),
              const PopupMenuItem(
                value: FilterOption.All,
                child: Text('Todos'),
              )
            ],
            onSelected: (FilterOption selectedValue) {
              setState(() {
                if (selectedValue == FilterOption.Favorite) {
                  _showFavoriteOnly = true;
                } else {
                  _showFavoriteOnly = false;
                }
              });
            },
          ),
        ],
      ),
      body: ProductGrid(_showFavoriteOnly),
    );
  }
}
