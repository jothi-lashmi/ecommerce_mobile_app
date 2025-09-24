import 'package:firebase_auth_project/presentation/category/widget/all_collection_category.dart';
import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  final String image;
  final String text;
  const ContainerImage({super.key, required this.image, required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AllCollectionCategory()),
            );
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 230, 245),
              // border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(image, fit: BoxFit.fill),
          ),
        ),
        SizedBox(height: 10),
        Text(text, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
