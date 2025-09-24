import 'package:firebase_auth_project/presentation/home/widget/big_container_image_contents.dart';
import 'package:firebase_auth_project/presentation/home/widget/product_image_widget.dart';
import 'package:flutter/material.dart';

class BigContainerContent extends StatelessWidget {
  const BigContainerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'New Arrivals',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('View All'),
            ),
          ],
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  BigContainerImageContents(
                    image: PRImages.shoe1,
                    title: 'New Rocket Vision',
                    colorText: '4 Colors',
                    amountText: '230',
                  ),
                  SizedBox(width: 12),
                  BigContainerImageContents(
                    image: PRImages.shoe2,
                    title: 'New Rocket Vision',
                    colorText: '4 Colors',
                    amountText: '340',
                  ),
                  SizedBox(width: 12),
                  BigContainerImageContents(
                    image: PRImages.shoe3,
                    title: 'New Rocket Vision',
                    colorText: '4 Colors',
                    amountText: '240',
                  ),
                  SizedBox(width: 12),
                  BigContainerImageContents(
                    image: PRImages.shoe4,
                    title: 'New Rocket Vision',
                    colorText: '4 Colors',
                    amountText: '340',
                  ),
                  SizedBox(width: 12),
                  BigContainerImageContents(
                    image: PRImages.shoe5,
                    title: 'New Rocket Vision',
                    colorText: '4 Colors',
                    amountText: '500',
                  ),
                  SizedBox(width: 12),
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  BigContainerImageContents(
                    image: PRImages.shirt1,
                    title: 'New Rocket Vision',
                    colorText: '4 Colors',
                    amountText: '240',
                  ),
                  SizedBox(width: 12),
                  BigContainerImageContents(
                    image: PRImages.shirt2,
                    title: 'New Rocket Vision',
                    colorText: '4 Colors',
                    amountText: '140',
                  ),
                  SizedBox(width: 12),
                  BigContainerImageContents(
                    image: PRImages.shirt3,
                    title: 'New Rocket Vision',
                    colorText: '4 Colors',
                    amountText: '280',
                  ),
                  SizedBox(width: 12),
                  BigContainerImageContents(
                    image: PRImages.shirt4,
                    title: 'New Rocket Vision',
                    colorText: '4 Colors',
                    amountText: '290',
                  ),
                  SizedBox(width: 12),
                  BigContainerImageContents(
                    image: PRImages.shirt5,
                    title: 'New Rocket Vision',
                    colorText: '4 Colors',
                    amountText: '340',
                  ),
                  SizedBox(width: 12),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
