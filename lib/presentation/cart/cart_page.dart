import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth_project/domain/core/cart_product.dart';
import 'package:firebase_auth_project/domain/core/wishlist_storage.dart';
import 'package:firebase_auth_project/presentation/cart/widget/bottom_container.dart';
import 'package:firebase_auth_project/presentation/cart/widget/cart_body_content.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: cartlistNotifier,
      builder: (context, cartProducts, _) {
        final totalAmount = calculateCartTotal(cartProducts);
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                context.router.pop();
              },
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: Text(
              'CART',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Poppins-Light',
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
          ),
          body: CartBodyContent(cartProducts: cartProducts, total: totalAmount),
          bottomNavigationBar: BottomContainer(total: totalAmount),
        );
      },
    );
  }
}

double calculateCartTotal(List<CartProduct> products) {
  double total = 0;
  for (final p in products) {
    total += double.parse(p.amountText) * p.qty;
  }
  return total;
}
