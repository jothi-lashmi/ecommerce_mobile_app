import 'package:flutter/material.dart';

class ContainerContent extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const ContainerContent({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width * 0.32,
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(image, fit: BoxFit.fill),
              ),
            ),
            Container(
              width: 160,
              height: 120,
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(title, style: Theme.of(context).textTheme.bodySmall),
                  Text(subtitle, style: TextStyle(fontSize: 15)),
                  SizedBox(height: 5),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Buy Now'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
