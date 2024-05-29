import 'package:flutter/material.dart';

import '../utils/bottamsheet_menu.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: CommonBottomSheet(),
      body: Container(
        child: Center(child: Text('This is Profile')),
      ),
    );
  }
}
