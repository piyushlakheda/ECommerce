// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import '../widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: new ProductGrid(),
    );
  }
}
