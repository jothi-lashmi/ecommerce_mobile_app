import 'package:firebase_auth_project/presentation/home/widget/product_image_widget.dart';
import 'package:firebase_auth_project/presentation/wishlist/widget/products_container.dart';
import 'package:flutter/material.dart';

class AllCollectionCategory extends StatelessWidget {
  const AllCollectionCategory({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Collections', style: TextStyle(fontSize: 18)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            ProductsContainer(
              image: PRImages.shirt1,
              title: 'New Rocket Vision',
              colorText: '4 Colors',
              amountText: '240',
              isFavorite: false,
            ),
            ProductsContainer(
              image: PRImages.shirt2,
              title: 'New Rocket Vision',
              colorText: '4 Colors',
              amountText: '140',
              isFavorite: false,
            ),
            ProductsContainer(
              image: PRImages.shirt3,
              title: 'New Rocket Vision',
              colorText: '4 Colors',
              amountText: '280',
              isFavorite: false,
            ),
            ProductsContainer(
              image: PRImages.shirt4,
              title: 'New Rocket Vision',
              colorText: '4 Colors',
              amountText: '290',
              isFavorite: false,
            ),
            ProductsContainer(
              image: PRImages.shirt5,
              title: 'New Rocket Vision',
              colorText: '4 Colors',
              amountText: '340',
              isFavorite: false,
            ),
            ProductsContainer(
              image: PRImages.shoe1,
              title: 'New Rocket Vision',
              colorText: '4 Colors',
              amountText: '230',
              isFavorite: false,
            ),
            ProductsContainer(
              image: PRImages.shoe2,
              title: 'New Rocket Vision',
              colorText: '4 Colors',
              amountText: '340',
              isFavorite: false,
            ),
            ProductsContainer(
              image: PRImages.shoe3,
              title: 'New Rocket Vision',
              colorText: '4 Colors',
              amountText: '240',
              isFavorite: false,
            ),
          ],
        ),
      ),
    );
  }
}
