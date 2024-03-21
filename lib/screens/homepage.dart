import 'package:flutter/material.dart';
import 'package:sneaker_shop/screens/cart_page.dart';
import 'package:sneaker_shop/screens/shop_page.dart';
import 'package:sneaker_shop/widgets/bottom_nav_bar.dart';
import 'package:sneaker_shop/widgets/my_drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // Selected index variable to control the bottom nav bar
  int _selectedIndex = 0;

  // A method to update selected index
  void navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages to display
  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: const MyDawer(),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomNavBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
