import 'package:flutter/material.dart';

class PriceDetails extends StatelessWidget {
  final double total;
  const PriceDetails({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(color: Colors.grey[100]),
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 5),
              Text(
                'Price Details',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(width: 5),
              Text('(2items)', style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Totl Product Price',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text('+ ₹$total', style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order Discount',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text('- ₹22', style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Order Total', style: Theme.of(context).textTheme.bodySmall),
              Text(
                '+ ₹${total - 22}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 225, 250, 242),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: const Color.fromARGB(255, 189, 245, 189),
                width: 1,
              ),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.local_offer,
                    color: const Color.fromARGB(255, 0, 161, 94),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'your total discount is +₹22',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 161, 94),
                      fontSize: 14,
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
