import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth_project/presentation/home/widget/product_image_widget.dart';
import 'package:firebase_auth_project/presentation/user/widget/user_container_images.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserPage extends StatelessWidget {
  const UserPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 40,
            padding: const EdgeInsets.only(left: 12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.search, size: 20, color: Colors.grey),
                SizedBox(width: 5),
                Text(
                  'Search or ask question',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,

            // border: Border.all(color: Colors.black),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          PRImages.shirt1,
                          width: 35,
                          height: 35,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Hello, Jothi',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.language_rounded),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Previously Orders',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              UserContainerImages(),
              Divider(color: Colors.grey),
              UserContainerImages(),
              Divider(color: Colors.grey),
              UserContainerImages(),
              Divider(color: Colors.grey),
              UserContainerImages(),
              Divider(color: Colors.grey),
              UserContainerImages(),
              Divider(color: Colors.grey),
              UserContainerImages(),
            ],
          ),
        ),
      ),
    );
  }
}
