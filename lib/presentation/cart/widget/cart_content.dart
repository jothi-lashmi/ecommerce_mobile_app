import 'package:flutter/material.dart';

class CartContent extends StatelessWidget {
  final String image;
  final String title;
  final String amountText;
  final int qty;
  const CartContent({
    super.key,
    required this.image,
    required this.title,
    required this.amountText,
    required this.qty,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 225, 250, 242),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: const Color.fromARGB(255, 189, 245, 189),
              width: 1,
            ),
          ),
          child: Center(
            child: Text(
              'you have earned offer today',
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 161, 94),
                fontSize: 14,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 238, 238),
                border: Border.all(
                  color: const Color.fromARGB(255, 233, 233, 233),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  width: 30,
                  height: 30,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.bodySmall),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.attach_money, size: 15),
                    Text(
                      (int.parse(amountText) * (qty)).toString(),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.blueGrey,
                        backgroundColor: const Color.fromARGB(
                          255,
                          212,
                          212,
                          212,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        minimumSize: Size(10, 10),
                        padding: EdgeInsets.all(8),
                      ),
                      child: Text('Size:FreeSize'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.blueGrey,
                        backgroundColor: const Color.fromARGB(
                          255,
                          212,
                          212,
                          212,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        minimumSize: Size(10, 10),
                        padding: EdgeInsets.all(8),
                      ),
                      child: Text('Qty: $qty'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'All issues easy return ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.04,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Color(0xFF374151),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Move to Wishlisht',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.04,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.remove_circle_outline, color: Color(0xFF374151)),
                    SizedBox(width: 10),
                    Text(
                      'Remove',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
