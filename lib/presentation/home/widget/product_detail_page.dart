import 'package:firebase_auth_project/domain/core/cart_product.dart';
import 'package:firebase_auth_project/domain/core/wishlist_storage.dart';
import 'package:firebase_auth_project/presentation/home/widget/bottom_container_addcart.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailPage extends StatefulWidget {
  final String image;
  final String title;
  final String colorText;
  final String amountText;
  const ProductDetailPage({
    super.key,
    required this.image,
    required this.title,
    required this.colorText,
    required this.amountText,
  });

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  late final PageController _pageController;
  late final List<String> productImages;
  int qty = 0;
  bool isAddIcon = false;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    productImages = [
      widget.image,
      widget.image,
      widget.image,
      widget.image,
      widget.image,
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void toggleCart() {
    debugPrint('this is add icon');
    final product = CartProduct(
      image: widget.image,
      title: widget.title,
      colorText: widget.colorText,
      amountText: widget.amountText,
    );

    // setState(() {
    //   isAddIcon = true; // once clicked, always show qty box

    //   final index = cartlistNotifier.value.indexWhere((p) => p.isSame(product));

    //   if (index != -1) {
    //     cartlistNotifier.value[index].qty++;
    //   } else {
    //     cartlistNotifier.value = [...cartlistNotifier.value, product];
    //   }
    // });
    setState(() {
      if (!isAddIcon) {
        // First time click → add to cart with qty = 1
        isAddIcon = true;
        qty = 1;
        cartlistNotifier.value = [...cartlistNotifier.value, product];
      }
    });
  }

  void incrementQty() {
    setState(() {
      qty++;
      // update in cart list
      final index = cartlistNotifier.value.indexWhere(
        (p) => p.isSame(
          CartProduct(
            image: widget.image,
            title: widget.title,
            colorText: widget.colorText,
            amountText: widget.amountText,
          ),
        ),
      );
      if (index != -1) {
        cartlistNotifier.value[index].qty = qty;
        cartlistNotifier.value = List.from(cartlistNotifier.value); // notify
      }
    });
  }

  void decrementQty() {
    setState(() {
      if (qty > 1) {
        qty--;
        final index = cartlistNotifier.value.indexWhere(
          (p) => p.isSame(
            CartProduct(
              image: widget.image,
              title: widget.title,
              colorText: widget.colorText,
              amountText: widget.amountText,
            ),
          ),
        );
        if (index != -1) {
          cartlistNotifier.value[index].qty = qty;
          cartlistNotifier.value = List.from(cartlistNotifier.value);
        }
      } else {
        // qty = 0 → remove from cart
        qty = 0;
        isAddIcon = false;
        cartlistNotifier.value.removeWhere(
          (p) => p.isSame(
            CartProduct(
              image: widget.image,
              title: widget.title,
              colorText: widget.colorText,
              amountText: widget.amountText,
            ),
          ),
        );
        cartlistNotifier.value = List.from(cartlistNotifier.value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(color: Colors.white, Icons.arrow_back_ios),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(color: Colors.white, Icons.search_outlined),
                onPressed: () {},
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
              IconButton(
                icon: const Icon(
                  color: Colors.white,
                  Icons.shopping_cart_outlined,
                ),
                onPressed: () {},
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(12),
                // border: Border.all(color: Colors.black),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.1),
                //     blurRadius: 8,
                //     offset: const Offset(0, 4),
                //   ),
                // ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: productImages.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            productImages[index],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          );
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // 🔹 SmoothPageIndicator linked to PageView
                  Center(
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: productImages.length,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: Colors.pinkAccent,
                        dotHeight: 8,
                        dotWidth: 8,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        // height: MediaQuery.of(context).size.height * 0.09,
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.black),
                        ),
                        child: Center(
                          child: Text(
                            widget.title,
                            style: Theme.of(context).textTheme.bodySmall,
                            softWrap: true,
                            // overflow: TextOverflow.ellipsis,/
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  color: Colors.black,
                                  Icons.favorite_outline,
                                ),
                                onPressed: () {},
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                              ),
                              Text(
                                'wishlist',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  color: Colors.black,
                                  Icons.share,
                                ),
                                onPressed: () {},
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                              ),
                              Text(
                                'share',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '₹${widget.amountText}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '466 10% off',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.09,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15),
                        Icon(Icons.local_offer, color: Colors.deepOrange),
                        SizedBox(width: 5),
                        Text(
                          'UPI Offer applied for you',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '₹${widget.amountText} with Shop Pay',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Free Delivery',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 50,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '4.8',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          const SizedBox(width: 5),
                          Icon(Icons.star, size: 12, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomContainerAddcart(
        toggleCart: toggleCart,
        incrementQty: incrementQty,
        decrementQty: decrementQty,
        isAddIcon: isAddIcon,
        qty: qty,
      ),
    );
  }
}
