import 'package:firebase_auth_project/domain/core/product.dart';
import 'package:firebase_auth_project/domain/core/wishlist_storage.dart';
import 'package:firebase_auth_project/presentation/home/widget/product_detail_page.dart';
import 'package:flutter/material.dart';

class BigContainerImageContents extends StatefulWidget {
  final String image;
  final String title;
  final String colorText;
  final String amountText;
  const BigContainerImageContents({
    super.key,
    required this.image,
    required this.title,
    required this.colorText,
    required this.amountText,
  });

  @override
  State<BigContainerImageContents> createState() =>
      _BigContainerImageContentsState();
}

class _BigContainerImageContentsState extends State<BigContainerImageContents> {
  bool isFavorite = false;

  void toggleWishList() {
    debugPrint('this is like');

    final product = Product(
      image: widget.image,
      title: widget.title,
      colorText: widget.colorText,
      amountText: widget.amountText,
    );

    setState(() {
      isFavorite = !isFavorite;
    });

    if (isFavorite) {
      wishlistNotifier.value = [...wishlistNotifier.value, product];
    } else {
      wishlistNotifier.value = wishlistNotifier.value
          .where(
            (p) =>
                p.image != product.image ||
                p.title != product.title ||
                p.colorText != product.colorText ||
                p.amountText != product.amountText,
          )
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              image: widget.image,
              title: widget.title,
              colorText: widget.colorText,
              amountText: widget.amountText,
            ),
          ),
        );
      },
      child: Container(
        // height: MediaQuery.of(context).size.height,
        width: 140,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              // clipBehavior: Clip.antiAlias,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    widget.image,
                    width: 180,
                    height: 120,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: -5,
                  left: 90,
                  right: 0,
                  child: IconButton(
                    onPressed: toggleWishList,
                    icon: Icon(
                      isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      size: 18,
                      color: isFavorite ? Colors.red : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              widget.title,
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            SizedBox(height: 5),
            Container(
              width: 70,
              height: 29,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.grey[100],
                // border: Border.all(
                //   color: const Color.fromARGB(255, 206, 206, 206),
                // ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  widget.colorText,
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.attach_money, size: 15),
                    Text(
                      widget.amountText,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
