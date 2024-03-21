import 'package:flutter/material.dart';
import 'package:sneaker_shop/widgets/my_list_tile.dart';

class MyDawer extends StatelessWidget {
  const MyDawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Other pages
          Column(
            children: [
              //logo
              DrawerHeader(
                  child: Image.asset(
                'lib/images/nike logo.png',
                color: Colors.white,
              )),
              const MyListTile(leadingIcon: Icon(Icons.home), text: 'Home'),
              const MyListTile(leadingIcon: Icon(Icons.info), text: 'About'),
            ],
          ),
          const MyListTile(leadingIcon: Icon(Icons.logout), text: 'Logout'),
        ],
      ),
    );
  }
}
