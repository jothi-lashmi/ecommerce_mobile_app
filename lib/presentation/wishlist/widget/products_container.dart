import 'package:flutter/material.dart';

class ProductsContainer extends StatelessWidget {
  final String image;
  final String title;
  final String colorText;
  final String amountText;
  final bool isFavorite;
  const ProductsContainer({
    super.key,
    required this.image,
    required this.title,
    required this.colorText,
    required this.amountText,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color.fromARGB(255, 214, 214, 214)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            // clipBehavior: Clip.antiAlias,
            children: [
              Image.asset(image, width: 180, height: 200, fit: BoxFit.fill),
              Positioned(
                top: 0,
                left: 130,
                right: 0,
                child: IconButton(
                  onPressed: () {
                    print('this is icon like');
                  },
                  icon: Icon(
                    isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border_outlined,
                    size: 24,
                    color: isFavorite ? Colors.red : Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(title, style: Theme.of(context).textTheme.bodySmall),
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
                colorText,
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
                    amountText,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
    );
  }
}
