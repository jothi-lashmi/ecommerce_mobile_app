import 'package:firebase_auth_project/presentation/home/widget/big_container_content.dart';
import 'package:firebase_auth_project/presentation/home/widget/carousal_slide.dart';
import 'package:firebase_auth_project/presentation/home/widget/fixed_app_container.dart';
import 'package:firebase_auth_project/presentation/home/widget/icons_container.dart';
import 'package:flutter/material.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  final ScrollController _scrollController = ScrollController();
  bool _showFixedHeader = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 50 && !_showFixedHeader) {
        setState(() {
          _showFixedHeader = true;
        });
      } else if (_scrollController.offset <= 100 && _showFixedHeader) {
        setState(() {
          _showFixedHeader = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  //   color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Color.fromARGB(255, 243, 93, 193),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -140),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'SHOP',
                          style: TextStyle(
                            fontSize: 22,
                            color: Theme.of(context).colorScheme.surface,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 160,
                              height: 40,
                              padding: const EdgeInsets.only(left: 12),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(8),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.black.withOpacity(0.1),
                                //     blurRadius: 8,
                                //     offset: const Offset(0, 4),
                                //   ),
                                // ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.search,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Search',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                size: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: CarousalSlide(),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, -110),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconsContainer(
                          icon: Icons.category_rounded,
                          text: 'Catogory',
                          color: Colors.pinkAccent,
                        ),
                        IconsContainer(
                          icon: Icons.compare_sharp,
                          text: 'Compare',
                          color: Colors.purpleAccent,
                        ),
                        IconsContainer(
                          icon: Icons.event,
                          text: 'Sales event',
                          color: Colors.purple,
                        ),
                        IconsContainer(
                          icon: Icons.local_offer,
                          text: 'Offers',
                          color: Colors.deepOrange,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      // height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: BigContainerContent(),
                    ),
                    SizedBox(height: 20),
                    Container(
                      // height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: BigContainerContent(),
                    ),
                    SizedBox(height: 20),
                    Container(
                      // height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: BigContainerContent(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // scroll down widget
        if (_showFixedHeader) Positioned(child: FixedAppContainer()),
      ],
    );
  }
}
