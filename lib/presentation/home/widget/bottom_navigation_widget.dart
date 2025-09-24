import 'package:firebase_auth_project/injection.dart';
import 'package:firebase_auth_project/presentation/category/category_page.dart';
import 'package:firebase_auth_project/presentation/core/router/app_router.dart';
import 'package:firebase_auth_project/presentation/home/widget/home_page_content.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePageContent(), // you already have this
    CategoryPage(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      getIt<AppRouter>().push(CartRoute());
    } else if (index == 3) {
      getIt<AppRouter>().push(WishlistRoute());
    } else if (index == 4) {
      getIt<AppRouter>().push(UserRoute());
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: Container(
        height: 90,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: const [
            BoxShadow(color: Colors.black26, spreadRadius: 1, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: "Category",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined),
                label: "Wishlist",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "User",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
