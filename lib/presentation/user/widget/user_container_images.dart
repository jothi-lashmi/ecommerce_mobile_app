import 'package:firebase_auth_project/presentation/home/widget/product_image_widget.dart';
import 'package:flutter/material.dart';

class UserContainerImages extends StatelessWidget {
  const UserContainerImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.17,
      padding: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        // border: Border.all(color: Colors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(PRImages.shirt1, fit: BoxFit.fill),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivered Early',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(height: 5),
              Text(
                "Here's a products you've ordered",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              SizedBox(height: 5),
              Text('wed, 02,Jul', style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: 5),
              Text('Free Size', style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}
