import 'package:flutter/material.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeData tema = ThemeData();
  MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: tema.colorScheme.copyWith(
          primary: Colors.purple,
          secondary: Colors.white,
          inversePrimary: Colors.deepOrange,
          primaryContainer: Colors.purple,
        ),
        fontFamily: 'Lato',
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.purple,
        ),
      ),
      home: ProductosOverviewPage(),
      routes: {
        AppRoutes.product_detail: (ctx) => ProductDetailPage(),
      },
    );
  }
}
