import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth_project/presentation/category/widget/feature_widget.dart';
import 'package:firebase_auth_project/presentation/category/widget/sarees_collection_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color.fromARGB(255, 236, 236, 236),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              FeatureWidget(),
              SizedBox(height: 30),
              SareesCollectionWidget(),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
              border: const Border(
                bottom: BorderSide(color: Color.fromARGB(255, 236, 236, 236)),
              ),
            ),
            child: Stack(
              children: [
                // Center text
                Center(
                  child: Text('All Categories', style: TextStyle(fontSize: 18)),
                ),

                // Icons aligned to the right
                Positioned(
                  right: 30,
                  top: 0,
                  bottom: 0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined),
                        ),
                      ),
                      SizedBox(width: 15),
                      SizedBox(
                        width: 15,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search_outlined, size: 28),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
