import 'package:flutter/material.dart';

class IconsContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const IconsContainer({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 226, 248),
            borderRadius: BorderRadius.circular(12),
            // border: Border.all(color: Colors.black),
            boxShadow: [
              BoxShadow(
                color: Colors.purpleAccent.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(icon, color: color),
          ),
        ),
        SizedBox(height: 5),
        Text(text, style: TextStyle(fontSize: 15)),
      ],
    );
  }
}
