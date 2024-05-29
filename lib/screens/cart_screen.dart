import 'package:flutter/material.dart';

import '../utils/bottamsheet_menu.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: CommonBottomSheet(),
      body: Container(
        child: Center(child: Text('This is Cart Screen')),
      ),
    );
  }
}
