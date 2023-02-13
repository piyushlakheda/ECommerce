// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, missing_required_param, deprecated_member_use, depend_on_referenced_packages

import 'package:flutter/material.dart';
import './screens/overview_screen.dart';
import './screens/product_screen.dart';
import './providers/products_providers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        title: 'My SHOP',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
