import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth_project/domain/core/wishlist_storage.dart';
import 'package:firebase_auth_project/presentation/wishlist/widget/products_container.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey)),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey)),
                  ),
                  child: Center(
                    child: Text(
                      'This is the wishlist page',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ValueListenableBuilder(
                  valueListenable: wishlistNotifier,
                  builder: (context, products, _) {
                    return Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        for (final p in products)
                          ProductsContainer(
                            image: p.image,
                            title: p.title,
                            colorText: p.colorText,
                            amountText: p.amountText,
                            isFavorite: true,
                          ),
                      ],
                    );
                  },
                ),

                SizedBox(height: 20),
              ],
            ),
          ),

          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
                border: const Border(
                  bottom: BorderSide(color: Color.fromARGB(255, 236, 236, 236)),
                ),
              ),
              child: Stack(
                children: [
                  // Center text
                  Column(
                    children: [
                      SizedBox(height: 5),
                      IconButton(
                        onPressed: () {
                          context.router.pop();
                        },
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                      'My Products',
                      style: TextStyle(
                        fontFamily: 'Poppins-Light',
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  // Icons aligned to the right
                  Positioned(
                    right: 30,
                    top: 0,
                    bottom: 0,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              color: Colors.white,
                              Icons.search_outlined,
                              size: 28,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        SizedBox(
                          width: 15,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              color: Colors.white,
                              Icons.shopping_cart_outlined,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
