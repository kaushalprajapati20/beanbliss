import 'package:flutter/material.dart';

import '../utils/bottamsheet_menu.dart';
class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: CommonBottomSheet(),
      body: Container(
        child: Center(child: Text('This is Fav Screen')),
      ),
    );
  }
}
