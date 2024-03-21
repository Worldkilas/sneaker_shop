import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';
import 'package:sneaker_shop/widgets/shoe_tile.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    //add shoe to cart
    void addShoeToCart(Shoe shoe) {
      // Adds a shoe to the cart
      cart.addItem(shoe);
      //alert the user, shoe successfully added
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('Successfully added!'),
                content: const Text(' Check your cart'),
                backgroundColor: Colors.grey[200],
              ));
    }

    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                // Search bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                        color: Colors.grey[100]),
                    child: const TextField(
                      showCursor: true,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          hintText: 'Search',
                          suffixIcon: Icon(Icons.search),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                ),

                //message
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    'everyone flies... some fly longer than others',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),

                //Hot Picks
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hot Picks🔥',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 1),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: value.shoeList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.shoeList[index];
                    // return the shoe
                    return ShoeTile(
                      shoe: shoe,
                      onTap: () => addShoeToCart(shoe),
                    );
                  },
                )),
                const Padding(
                  padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                  child: Divider(
                    color: Colors.transparent,
                  ),
                )
              ],
            ));
  }
}
