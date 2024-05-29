import 'package:coffee_app/utils/bottamsheet_menu.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: CommonBottomSheet(),
      body: Container(
        child: Center(child: Text('This is Home')),
      ),
    );
  }
}
