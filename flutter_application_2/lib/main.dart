import 'package:flutter/material.dart';

import 'package:flutter_application_2/add_to_cart.dart';
import 'package:flutter_application_2/hot_offers.dart';
import 'package:flutter_application_2/my_products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ShoppingPage(),
    );
  }
}

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  ShoppingPageState createState() => ShoppingPageState();
}

class ShoppingPageState extends State<ShoppingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping App'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyProducts(),
              AddToCart(),
              HotOffers(),
            ],
          ),
        ),
      ),
    );
  }
}
