import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key, this.onTabChange});
  final void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade800,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: const Color.fromRGBO(245, 245, 245, 1),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 13,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            )
          ]),
    );
  }
}
