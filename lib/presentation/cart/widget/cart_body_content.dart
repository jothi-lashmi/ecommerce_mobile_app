import 'package:firebase_auth_project/domain/core/cart_product.dart';
import 'package:firebase_auth_project/presentation/cart/widget/cart_content.dart';
import 'package:firebase_auth_project/presentation/cart/widget/price_details.dart';
import 'package:flutter/material.dart';

class CartBodyContent extends StatelessWidget {
  final List<CartProduct> cartProducts;
  final double total;
  const CartBodyContent({
    super.key,
    required this.cartProducts,
    required this.total,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Proceed to Buy',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: Column(
              children: [
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    for (final p in cartProducts)
                      CartContent(
                        image: p.image,
                        title: p.title,
                        amountText: p.amountText,
                        qty: p.qty,
                      ),
                    SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: const Color.fromARGB(255, 228, 227, 227),
                  width: 8,
                ),
                bottom: BorderSide(
                  color: const Color.fromARGB(255, 228, 227, 227),
                  width: 8,
                ),
              ),
            ),

            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.all(0),
                      icon: Icon(Icons.favorite_border_outlined, size: 20),
                    ),
                    Text(
                      'Wishlist',
                      style: TextStyle(
                        fontFamily: 'Poppins-Light',
                        color: Color(0xFF374151),
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0),
                  icon: Icon(Icons.arrow_forward_ios, size: 18),
                ),
              ],
            ),
          ),
          PriceDetails(total: total),
        ],
      ),
    );
  }
}
