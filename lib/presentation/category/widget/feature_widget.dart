import 'package:firebase_auth_project/presentation/category/widget/container_image.dart';
import 'package:firebase_auth_project/presentation/home/widget/product_image_widget.dart';
import 'package:flutter/material.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Featured On Shop', style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContainerImage(
                    image: PRImages.bg1,
                    text: 'Shirts Collection',
                  ),
                  ContainerImage(image: PRImages.bg2, text: 'Top Brands'),
                  ContainerImage(image: PRImages.bg3, text: 'Top Brands'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContainerImage(image: PRImages.bg4, text: 'Top Brands'),
                  ContainerImage(image: PRImages.bg5, text: 'Top Brands'),
                  ContainerImage(image: PRImages.bg6, text: 'Top Brands'),
                ],
              ),
            ],
          ),

          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sarees Collection', style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContainerImage(
                    image: PRImages.pattu,
                    text: 'Pattu Collection',
                  ),
                  ContainerImage(image: PRImages.half, text: 'Half Brands'),
                  ContainerImage(
                    image: PRImages.panaras,
                    text: 'Panaras Sarees',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContainerImage(
                    image: PRImages.designer,
                    text: 'Designer Sarees',
                  ),
                  ContainerImage(
                    image: PRImages.poonam,
                    text: 'Poonam Collection',
                  ),
                  ContainerImage(
                    image: PRImages.wedding,
                    text: 'Wedding Sarees',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
