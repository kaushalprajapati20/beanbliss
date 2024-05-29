import 'package:coffee_app/screens/cart_screen.dart';
import 'package:coffee_app/screens/fav_screen.dart';
import 'package:coffee_app/screens/home_screen.dart';
import 'package:coffee_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_colors.dart';

class CommonBottomSheet extends StatefulWidget {
  const CommonBottomSheet({super.key});

  @override
  State<CommonBottomSheet> createState() => _CommonBottomSheetState();
}

class _CommonBottomSheetState extends State<CommonBottomSheet> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: BouncingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomeScreen(),
          CartScreen(),
          FavScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(1, 1),
                blurRadius: 5,
                spreadRadius: 1,
                blurStyle: BlurStyle.outer,
                color: Color.fromARGB(12, 0, 0, 0)),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          showSelectedLabels: true,
          elevation: 10,
          selectedIconTheme: IconThemeData(color: AppColors.ButtonColor),
          unselectedIconTheme: IconThemeData(color: AppColors.bottomUnselectColor),
          showUnselectedLabels: true,
          selectedItemColor: AppColors.ButtonColor,
          unselectedItemColor: AppColors.bottomUnselectColor,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3),
                child: ImageIcon(
                  size: 30,
                  color: _selectedIndex == 0 ? AppColors.ButtonColor : AppColors.bottomUnselectColor,
                  AssetImage('assets/Home.png'),
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3),
                child: ImageIcon(
                  size: 30,
                  color: _selectedIndex == 1 ? AppColors.ButtonColor : AppColors.bottomUnselectColor,
                  AssetImage('assets/Bag.png'),
                ),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3),
                child: ImageIcon(
                  color: _selectedIndex == 2 ? AppColors.ButtonColor : AppColors.bottomUnselectColor,
                  size: 30, AssetImage('assets/Heart.png'),
                ),
              ),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3),
                child: ImageIcon(
                  color: _selectedIndex == 3 ? AppColors.ButtonColor : AppColors.bottomUnselectColor,
                  size: 30, AssetImage('assets/profile.png'),
                ),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
