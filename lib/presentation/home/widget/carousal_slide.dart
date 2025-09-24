import 'package:firebase_auth_project/presentation/home/widget/container_content.dart';
import 'package:firebase_auth_project/presentation/home/widget/product_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarousalSlide extends StatefulWidget {
  const CarousalSlide({super.key});

  @override
  State<CarousalSlide> createState() => _CarousalSlideState();
}

class _CarousalSlideState extends State<CarousalSlide> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 125,
          decoration: BoxDecoration(
            // border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: PageView(
            controller: _pageController,
            children: [
              ContainerContent(
                image: PRImages.shoe1,
                title: 'Introducing',
                subtitle: 'Air Max 2060',
              ),
              ContainerContent(
                image: PRImages.shirt1,
                title: 'New Arrival',
                subtitle: 'Premium Panel Shirt',
              ),
              ContainerContent(
                image: PRImages.dress1,
                title: 'New Arrival',
                subtitle: 'Festival Wear',
              ),
              ContainerContent(
                image: PRImages.shirt1,
                title: 'Beauty Ultimate',
                subtitle: 'Lakme Ultra mackup',
              ),
              ContainerContent(
                image: PRImages.shoe2,
                title: 'Exclusive',
                subtitle: 'Adias yeezy',
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: SmoothPageIndicator(
            controller: _pageController,
            count: 5,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.pinkAccent,
              dotHeight: 7,
              dotWidth: 7,
            ),
          ),
        ),
      ],
    );
  }
}
