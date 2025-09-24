import 'package:flutter/material.dart';

class BottomContainerAddcart extends StatelessWidget {
  final VoidCallback toggleCart;
  final VoidCallback incrementQty;
  final VoidCallback decrementQty;
  final bool isAddIcon;
  final int qty;
  const BottomContainerAddcart({
    super.key,
    required this.toggleCart,
    required this.incrementQty,
    required this.decrementQty,
    required this.isAddIcon,
    required this.qty,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey)),
      ),
      padding: EdgeInsets.all(13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: toggleCart,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 12),
              backgroundColor: isAddIcon ? Colors.pink : Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(color: Colors.pink, width: 1),
              ),
            ),
            child: isAddIcon
                ? Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: decrementQty,
                        icon: Icon(
                          Icons.remove,
                          color: isAddIcon ? Colors.white : Colors.pink,
                        ),
                      ),
                      Text(
                        '$qty',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: isAddIcon ? Colors.white : Colors.pink,
                        ),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: incrementQty,
                        icon: Icon(
                          Icons.add,
                          color: isAddIcon ? Colors.white : Colors.pink,
                        ),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: isAddIcon ? Colors.white : Colors.pink,
                      ),
                      Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: isAddIcon ? Colors.white : Colors.pink,
                        ),
                      ),
                    ],
                  ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 12),
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.arrow_forward_ios_rounded),
                Icon(Icons.arrow_forward_ios_rounded),
                Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
