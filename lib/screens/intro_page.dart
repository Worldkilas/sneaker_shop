import 'package:flutter/material.dart';
import 'package:sneaker_shop/screens/homepage.dart';
import 'package:sneaker_shop/widgets/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Nike Logo
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset(
                'lib/images/nike logo.png',
                height: 100,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Title
          const Text(
            'Just Do It',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          // Subtitle
          const Text(
            'Brand new sneakers and custom kicks made with premium quality',
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          // Start now button
          Button(
            label: 'Shop now',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Homepage()));
            },
          )
        ],
      ),
    );
  }
}
